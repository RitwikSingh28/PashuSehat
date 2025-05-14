import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_error.freezed.dart';
part 'auth_error.g.dart';

@freezed
class AuthError with _$AuthError {
  const factory AuthError({
    required String error,
    required String message,
    Map<String, dynamic>? details,
  }) = _AuthError;

  factory AuthError.fromJson(Map<String, dynamic> json) =>
      _$AuthErrorFromJson(json);
}
