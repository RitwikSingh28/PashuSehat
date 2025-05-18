import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cattle_health/features/auth/bloc/auth_event.dart';
import 'package:cattle_health/features/auth/bloc/auth_state.dart';
import 'package:cattle_health/features/auth/models/auth_error.dart';
import 'package:cattle_health/features/auth/models/user_model.dart';
import 'package:cattle_health/features/auth/repositories/auth_repository.dart';
import 'package:cattle_health/features/auth/services/token_storage.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  final AuthStorage _tokenStorage;

  AuthBloc({
    required AuthRepository authRepository,
    required AuthStorage tokenStorage,
  })  : _authRepository = authRepository,
        _tokenStorage = tokenStorage,
        super(const AuthState.initial()) {
    on<RegisterEvent>(_onRegister);
    on<LoginEvent>(_onLogin);
    on<LogoutEvent>(_onLogout);
    on<CheckAuthStatusEvent>(_onCheckAuthStatus);
    on<RequestOtpEvent>(_onRequestOtp);
    on<VerifyOtpEvent>(_onVerifyOtp);
    on<VerifyRegistrationOtpEvent>(_onVerifyRegistrationOtp);
  }

  Future<void> _onRegister(
    RegisterEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const AuthState.loading());

      final responseData = await _authRepository.register(
        phone: event.phone,
        password: event.password,
        name: event.name,
        farmAddress: event.farmAddress,
        pinCode: event.pinCode,
      );

      emit(AuthState.registrationSuccess(responseData['userId'] as String, event.phone));
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

  Future<void> _onVerifyRegistrationOtp(
    VerifyRegistrationOtpEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const AuthState.loading());
      final response = await _authRepository.verifyRegistrationOtp(
        event.userId,
        event.phone,
        event.otp,
      );
      await _tokenStorage.saveTokens(
        accessToken: response.accessToken,
        refreshToken: response.refreshToken,
      );
      await _tokenStorage.saveUser(response.user);
      await _tokenStorage.saveUser(response.user);
      emit(AuthState.authenticated(response.user));
    } on AuthError catch (e) {
      emit(AuthState.error(e));
    } catch (e) {
      emit(AuthState.error(
        AuthError(
          error: 'VERIFICATION_FAILED',
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

      await _tokenStorage.saveTokens(
        accessToken: response.accessToken,
        refreshToken: response.refreshToken,
      );
      await _tokenStorage.saveUser(response.user);

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
      final user = await _tokenStorage.getUser();
      final accessToken = await _tokenStorage.getAccessToken();

      if (user != null && accessToken != null) {
        emit(AuthState.authenticated(user));
      } else {
        emit(const AuthState.unauthenticated());
      }
    } catch (e) {
      emit(const AuthState.unauthenticated());
    }
  }
}
