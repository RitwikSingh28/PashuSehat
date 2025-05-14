import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:cattle_health/core/constants/api_constants.dart';
import 'package:cattle_health/features/auth/models/auth_error.dart';
import 'package:cattle_health/features/auth/models/auth_response.dart';
import 'package:cattle_health/features/auth/models/user_model.dart';
import 'package:cattle_health/features/auth/services/token_storage.dart';

class AuthRepository {
  final Dio _dio;
  final TokenStorage _tokenStorage;

  AuthRepository({Dio? dio, TokenStorage? tokenStorage})
      : _dio = dio ?? Dio(BaseOptions(baseUrl: ApiConstants.baseUrl)),
        _tokenStorage = tokenStorage ?? TokenStorage() {
    _dio.interceptors.addAll([
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        compact: true,
      ),
      InterceptorsWrapper(
        onRequest: _authRequestInterceptor,
        onError: _authErrorInterceptor,
      ),
    ]);
  }

  Future<void> _authRequestInterceptor(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await _tokenStorage.getAccessToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  Future<void> _authErrorInterceptor(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == 401) {
      final refreshToken = await _tokenStorage.getRefreshToken();
      if (refreshToken != null) {
        try {
          final response = await _dio.post(
            ApiConstants.refresh,
            data: {'refreshToken': refreshToken},
          );

          final tokens = AuthResponse.fromJson(response.data);
          await _tokenStorage.saveTokens(
            accessToken: tokens.accessToken,
            refreshToken: tokens.refreshToken,
          );

          // Retry the original request with new token
          final options = err.requestOptions;
          options.headers['Authorization'] = 'Bearer ${tokens.accessToken}';
          final retryResponse = await _dio.fetch(options);
          return handler.resolve(retryResponse);
        } catch (e) {
          await _tokenStorage.clearTokens();
        }
      }
    }
    handler.next(err);
  }

  Future<void> requestOtp(String phoneNumber) async {
    try {
      await _dio.post(
        ApiConstants.otpRequest,
        data: {
          'phoneNumber': phoneNumber,
        },
      );
    } on DioException catch (e) {
      throw AuthError.fromDioError(e);
    }
  }

  Future<AuthResponse> verifyOtp(String phoneNumber, String otp) async {
    try {
      final response = await _dio.post(
        ApiConstants.otpVerify,
        data: {
          'phoneNumber': phoneNumber,
          'otp': otp,
        },
      );
      final authResponse = AuthResponse.fromJson(response.data);
      return authResponse;
    } on DioException catch (e) {
      throw AuthError.fromDioError(e);
    }
  }

  Future<AuthResponse> register({
    required String phone,
    required String password,
    required String name,
  }) async {
    final response = await _dio.post(
      ApiConstants.register,
      data: {
        'phone': phone,
        'password': password,
        'name': name,
      },
    );

    final authResponse = AuthResponse.fromJson(response.data);
    await _tokenStorage.saveTokens(
      accessToken: authResponse.accessToken,
      refreshToken: authResponse.refreshToken,
    );

    return authResponse;
  }

  Future<AuthResponse> login({
    required String phone,
    required String password,
  }) async {
    final response = await _dio.post(
      ApiConstants.loginWithPassword,
      data: {
        'phoneNumber': phone,
        'password': password,
      },
    );

    final authResponse = AuthResponse.fromJson(response.data);
    await _tokenStorage.saveTokens(
      accessToken: authResponse.accessToken,
      refreshToken: authResponse.refreshToken,
    );

    return authResponse;
  }

  Future<void> logout() async {
    try {
      await _dio.post(ApiConstants.logout);
    } finally {
      await _tokenStorage.clearTokens();
    }
  }
}
