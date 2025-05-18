import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cattle_error.freezed.dart';
part 'cattle_error.g.dart';

@freezed
class CattleError with _$CattleError {
  const factory CattleError({
    required String error,
    required String message,
    Map<String, dynamic>? details,
  }) = _CattleError;

  factory CattleError.fromJson(Map<String, dynamic> json) =>
      _$CattleErrorFromJson(json);

  factory CattleError.fromDioError(DioException error) {
    if (error.type == DioExceptionType.connectionTimeout ||
        error.type == DioExceptionType.sendTimeout ||
        error.type == DioExceptionType.receiveTimeout) {
      return const CattleError(
        error: 'CONNECTION_TIMEOUT',
        message: 'Connection timed out. Please check your internet connection.',
      );
    }

    if (error.type == DioExceptionType.connectionError) {
      return const CattleError(
        error: 'NO_CONNECTION',
        message: 'No internet connection available.',
      );
    }

    final response = error.response;
    if (response != null) {
      if (response.statusCode == 401) {
        return const CattleError(
          error: 'UNAUTHORIZED',
          message: 'Please login to continue.',
        );
      }

      if (response.data is Map<String, dynamic>) {
        try {
          return CattleError.fromJson(response.data as Map<String, dynamic>);
        } catch (_) {
          return CattleError(
            error: 'API_ERROR',
            message: response.data['message'] ?? 'An error occurred',
          );
        }
      }
    }

    return CattleError(
      error: 'UNKNOWN_ERROR',
      message: error.message ?? 'An unexpected error occurred',
    );
  }
}
