import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cattle_health/features/auth/bloc/auth_event.dart';
import 'package:cattle_health/features/auth/bloc/auth_state.dart';
import 'package:cattle_health/features/auth/models/auth_error.dart';
import 'package:cattle_health/features/auth/models/user_model.dart';
import 'package:cattle_health/features/auth/repositories/auth_repository.dart';
import 'package:cattle_health/features/auth/services/token_storage.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  final TokenStorage _tokenStorage;

  AuthBloc({
    required AuthRepository authRepository,
    required TokenStorage tokenStorage,
  })  : _authRepository = authRepository,
        _tokenStorage = tokenStorage,
        super(const AuthState.initial()) {
    on<RegisterEvent>(_onRegister);
    on<LoginEvent>(_onLogin);
    on<LogoutEvent>(_onLogout);
    on<CheckAuthStatusEvent>(_onCheckAuthStatus);
    on<RequestOtpEvent>(_onRequestOtp);
    on<VerifyOtpEvent>(_onVerifyOtp);
  }

  Future<void> _onRegister(
    RegisterEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const AuthState.loading());

      final response = await _authRepository.register(
        phone: event.phone,
        password: event.password,
        name: event.name,
      );

      emit(AuthState.authenticated(response.user));
    } catch (e) {
      emit(AuthState.error(
        AuthError(
          error: 'REGISTRATION_FAILED',
          message: e.toString(),
        ),
      ));
    }
  }

  Future<void> _onRequestOtp(
    RequestOtpEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const AuthState.loading());
      await _authRepository.requestOtp(event.phone);
      emit(const AuthState.otpSent());
    } on AuthError catch (e) {
      emit(AuthState.error(e));
    } catch (e) {
      emit(AuthState.error(
        AuthError(
          error: 'OTP_REQUEST_FAILED',
          message: e.toString(),
        ),
      ));
    }
  }

  Future<void> _onVerifyOtp(
    VerifyOtpEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const AuthState.loading());
      final response = await _authRepository.verifyOtp(event.phone, event.otp);
      await _tokenStorage.saveTokens(
        accessToken: response.accessToken,
        refreshToken: response.refreshToken,
      );
      emit(AuthState.authenticated(response.user));
    } on AuthError catch (e) {
      emit(AuthState.error(e));
    } catch (e) {
      emit(AuthState.error(
        AuthError(
          error: 'OTP_VERIFICATION_FAILED',
          message: e.toString(),
        ),
      ));
    }
  }

  Future<void> _onLogin(
    LoginEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const AuthState.loading());

      final response = await _authRepository.login(
        phone: event.phone,
        password: event.password,
      );

      emit(AuthState.authenticated(response.user));
    } catch (e) {
      emit(AuthState.error(
        AuthError(
          error: 'LOGIN_FAILED',
          message: e.toString(),
        ),
      ));
    }
  }

  Future<void> _onLogout(
    LogoutEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const AuthState.loading());
      await _authRepository.logout();
      emit(const AuthState.unauthenticated());
    } catch (e) {
      // Even if logout fails on server, clear local tokens
      await _tokenStorage.clearTokens();
      emit(const AuthState.unauthenticated());
    }
  }

  Future<void> _onCheckAuthStatus(
    CheckAuthStatusEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      final token = await _tokenStorage.getAccessToken();
      if (token != null) {
        // TODO: Add API call to validate token and get user info
        // For now, just consider having a token as being authenticated
        emit(AuthState.authenticated(
          const User(
            userId: '',
            phoneNumber: '',
            name: '',
          ),
        ));
      } else {
        emit(const AuthState.unauthenticated());
      }
    } catch (e) {
      emit(const AuthState.unauthenticated());
    }
  }
}
