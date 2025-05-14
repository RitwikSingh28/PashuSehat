import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_error.freezed.dart';
part 'auth_error.g.dart';

@freezed
class AuthError with _$AuthError {
  const factory AuthError({
    @Default('UNKNOWN_ERROR') String error,
    @Default('An unknown error occurred') String message,
  }) = _AuthError;

  factory AuthError.fromJson(Map<String, dynamic> json) =>
      _$AuthErrorFromJson(json);

  factory AuthError.fromDioError(DioException e) {
    if (e.response?.data != null && e.response!.data is Map) {
      try {
        return AuthError.fromJson(e.response!.data as Map<String, dynamic>);
      } catch (_) {
        // If parsing fails, fall through to default handling
      }
    }

    String message;
    String error;

    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        error = 'TIMEOUT_ERROR';
        message = 'Connection timed out. Please try again.';
        break;
      case DioExceptionType.badResponse:
        error = 'SERVER_ERROR';
        message = e.response?.statusMessage ?? 'Server error occurred.';
        break;
      case DioExceptionType.cancel:
        error = 'REQUEST_CANCELLED';
        message = 'Request was cancelled.';
        break;
      case DioExceptionType.connectionError:
        error = 'CONNECTION_ERROR';
        message = 'No internet connection.';
        break;
      case DioExceptionType.badCertificate:
        error = 'CERTIFICATE_ERROR';
        message = 'Invalid certificate.';
        break;
      case DioExceptionType.unknown:
        error = 'UNKNOWN_ERROR';
        message = e.message ?? 'An unknown error occurred.';
        break;
    }

    return AuthError(error: error, message: message);
  }
}
