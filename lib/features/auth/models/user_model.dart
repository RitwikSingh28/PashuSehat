import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class FarmLocation with _$FarmLocation {
  const factory FarmLocation({
    required String address,
    required String pinCode,
  }) = _FarmLocation;

  factory FarmLocation.fromJson(Map<String, dynamic> json) =>
      _$FarmLocationFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    required String userId,
    required String phoneNumber,
    required String name,
    required FarmLocation farmLocation,
    @Default(false) bool isVerified,
    @JsonKey(fromJson: _dateFromMillis) DateTime? createdAt,
    @JsonKey(fromJson: _dateFromMillis) DateTime? lastLogin,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

DateTime? _dateFromMillis(dynamic value) {
  if (value == null) return null;
  if (value is int) {
    return DateTime.fromMillisecondsSinceEpoch(value);
  }
  return null;
}
