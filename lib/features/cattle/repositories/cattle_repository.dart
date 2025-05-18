import 'package:dio/dio.dart';
import 'package:cattle_health/core/constants/api_constants.dart';
import 'package:cattle_health/features/cattle/models/cattle_error.dart';
import 'package:cattle_health/features/cattle/models/cattle_model.dart';
import 'package:cattle_health/features/auth/services/token_storage.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class CattleRepository {
  final Dio _dio;
  final AuthStorage _tokenStorage;

  CattleRepository({Dio? dio, required AuthStorage tokenStorage})
      : _dio = dio ?? Dio(BaseOptions(baseUrl: ApiConstants.baseUrl)),
        _tokenStorage = tokenStorage {
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: _authInterceptor,
    ));
    _dio.interceptors.add(PrettyDioLogger(
      requestBody: true,
    ));
  }

  Future<void> _authInterceptor(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await _tokenStorage.getAccessToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  Future<Cattle> createCattle({
    required String tagId,
    required String name,
    required DateTime dateOfBirth,
    required Gender gender,
    required AgeGroup ageGroup,
    required String breed,
    String? governmentId,
    String? fatherName,
    String? motherName,
    List<String>? notes,
  }) async {
    try {
      final response = await _dio.post(
        '/cattle',
        data: {
          'tagId': tagId,
          'name': name,
          'dateOfBirth': dateOfBirth.toIso8601String(),
          'gender': gender.toString().split('.').last.toUpperCase(),
          'ageGroup': ageGroup.toString().split('.').last.toUpperCase(),
          'breed': breed,
          if (governmentId != null) 'governmentId': governmentId,
          if (fatherName != null) 'fatherName': fatherName,
          if (motherName != null) 'motherName': motherName,
          if (notes != null) 'notes': notes,
        },
      );
      return Cattle.fromJson(response.data);
    } on DioException catch (e) {
      throw CattleError.fromDioError(e);
    }
  }

  Future<List<Cattle>> getAllCattle() async {
    try {
      final response = await _dio.get('/cattle');
      return (response.data as List)
          .map((json) => Cattle.fromJson(json))
          .toList();
    } on DioException catch (e) {
      throw CattleError.fromDioError(e);
    }
  }

  Future<Cattle> getCattle(String cattleId) async {
    try {
      final response = await _dio.get('/cattle/$cattleId');
      return Cattle.fromJson(response.data);
    } on DioException catch (e) {
      throw CattleError.fromDioError(e);
    }
  }

  Future<Cattle> updateCattle(
    String cattleId, {
    String? tagId,
    String? name,
    DateTime? dateOfBirth,
    Gender? gender,
    AgeGroup? ageGroup,
    String? breed,
    String? governmentId,
    String? fatherName,
    String? motherName,
    List<String>? notes,
  }) async {
    try {
      final response = await _dio.put(
        '/cattle/$cattleId',
        data: {
          if (tagId != null) 'tagId': tagId,
          if (name != null) 'name': name,
          if (dateOfBirth != null) 'dateOfBirth': dateOfBirth.toIso8601String(),
          if (gender != null)
            'gender': gender.toString().split('.').last.toUpperCase(),
          if (ageGroup != null)
            'ageGroup': ageGroup.toString().split('.').last.toUpperCase(),
          if (breed != null) 'breed': breed,
          if (governmentId != null) 'governmentId': governmentId,
          if (fatherName != null) 'fatherName': fatherName,
          if (motherName != null) 'motherName': motherName,
          if (notes != null) 'notes': notes,
        },
      );
      return Cattle.fromJson(response.data);
    } on DioException catch (e) {
      throw CattleError.fromDioError(e);
    }
  }

  Future<Cattle> addNote(String cattleId, String note) async {
    try {
      final response = await _dio.post(
        '/cattle/$cattleId/notes',
        data: {'note': note},
      );
      return Cattle.fromJson(response.data);
    } on DioException catch (e) {
      throw CattleError.fromDioError(e);
    }
  }

  Future<void> deleteCattle(String cattleId) async {
    try {
      await _dio.delete('/cattle/$cattleId');
    } on DioException catch (e) {
      throw CattleError.fromDioError(e);
    }
  }
}
