import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cattle_health/features/auth/models/user_model.dart';
import 'package:cattle_health/features/auth/models/auth_error.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.authenticated(User user) = _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.error(AuthError error) = _Error;
}
