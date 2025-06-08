import 'package:dio/dio.dart';
import 'package:cattle_health/features/alerts/models/alert_model.dart';
import 'package:cattle_health/features/auth/services/token_storage.dart';
import 'package:cattle_health/core/constants/api_constants.dart';

class AlertRepository {
  final Dio _dio;
  final AuthStorage _tokenStorage;

  AlertRepository({
    required AuthStorage tokenStorage,
  })  : _tokenStorage = tokenStorage,
        _dio = Dio(BaseOptions(
          baseUrl: ApiConstants.baseUrl,
          validateStatus: (status) => status! < 500,
        ));

  Future<void> _setAuthHeader() async {
    final token = await _tokenStorage.getAccessToken();
    _dio.options.headers['Authorization'] = 'Bearer $token';
  }

  Future<List<Alert>> getUserAlerts({
    AlertStatus? status,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    await _setAuthHeader();

    final queryParams = <String, dynamic>{};
    if (status != null) {
      queryParams['status'] = status.toString().split('.').last;
    }
    if (startDate != null && endDate != null) {
      queryParams['startDate'] = startDate.toIso8601String();
      queryParams['endDate'] = endDate.toIso8601String();
    }

    try {
      final response = await _dio.get(
        '/alerts',
        queryParameters: queryParams,
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((json) => Alert.fromJson(json)).toList();
      }

      throw _handleError(response);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<List<Alert>> getCattleAlerts(
    String cattleId, {
    AlertStatus? status,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    await _setAuthHeader();

    final queryParams = <String, dynamic>{};
    if (status != null) {
      queryParams['status'] = status.toString().split('.').last;
    }
    if (startDate != null && endDate != null) {
      queryParams['startDate'] = startDate.toIso8601String();
      queryParams['endDate'] = endDate.toIso8601String();
    }

    try {
      final response = await _dio.get(
        '/alerts/cattle/$cattleId',
        queryParameters: queryParams,
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((json) => Alert.fromJson(json)).toList();
      }

      throw _handleError(response);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<Alert> acknowledgeAlert(String alertId) async {
    await _setAuthHeader();

    try {
      final response = await _dio.put('/alerts/$alertId/acknowledge');

      if (response.statusCode == 200) {
        return Alert.fromJson(response.data);
      }

      throw _handleError(response);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Exception _handleError(Response response) {
    if (response.data is Map<String, dynamic>) {
      final error = response.data as Map<String, dynamic>;
      final code = error['code'] as String?;
      final message = error['message'] as String?;

      switch (code) {
        case 'UNAUTHORIZED':
          return UnauthorizedException(message);
        case 'CATTLE_NOT_FOUND':
          return CattleNotFoundException(message);
        case 'ALERT_NOT_FOUND':
          return AlertNotFoundException(message);
        case 'FORBIDDEN':
          return ForbiddenException(message);
        case 'ALREADY_ACKNOWLEDGED':
          return AlreadyAcknowledgedException(message);
        case 'INVALID_OPERATION':
          return InvalidOperationException(message);
        default:
          return AlertException(message ?? 'Unknown error occurred');
      }
    }
    return AlertException('Unknown error occurred');
  }

  Exception _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return AlertException('Connection timeout. Please try again.');
      case DioExceptionType.connectionError:
        return AlertException('No internet connection.');
      default:
        return AlertException('An error occurred. Please try again.');
    }
  }
}

class AlertException implements Exception {
  final String? message;
  AlertException([this.message]);
}

class UnauthorizedException extends AlertException {
  UnauthorizedException([String? message]) : super(message);
}

class CattleNotFoundException extends AlertException {
  CattleNotFoundException([String? message]) : super(message);
}

class AlertNotFoundException extends AlertException {
  AlertNotFoundException([String? message]) : super(message);
}

class ForbiddenException extends AlertException {
  ForbiddenException([String? message]) : super(message);
}

class AlreadyAcknowledgedException extends AlertException {
  AlreadyAcknowledgedException([String? message]) : super(message);
}

class InvalidOperationException extends AlertException {
  InvalidOperationException([String? message]) : super(message);
}
