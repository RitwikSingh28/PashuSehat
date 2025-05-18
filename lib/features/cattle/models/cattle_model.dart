import 'package:freezed_annotation/freezed_annotation.dart';

part 'cattle_model.freezed.dart';
part 'cattle_model.g.dart';

enum Gender {
  @JsonValue('MALE')
  male,
  @JsonValue('FEMALE')
  female,
}

enum AgeGroup {
  @JsonValue('CALF')
  calf,
  @JsonValue('ADULT')
  adult,
  @JsonValue('RETIRED')
  retired,
}

@freezed
class Cattle with _$Cattle {
  const factory Cattle({
    required String cattleId,
    required String userId,
    required String tagId,
    required String name,
    @JsonKey(fromJson: _dateFromMillis, toJson: _dateToIso) required DateTime dateOfBirth,
    required Gender gender,
    required AgeGroup ageGroup,
    required String breed,
    String? governmentId,
    String? fatherName,
    String? motherName,
    @Default([]) List<String> notes,
    @JsonKey(fromJson: _dateFromMillis) DateTime? createdAt,
    @JsonKey(fromJson: _dateFromMillis) DateTime? updatedAt,
  }) = _Cattle;

  factory Cattle.fromJson(Map<String, dynamic> json) => _$CattleFromJson(json);
}

DateTime _dateFromMillis(dynamic value) {
  if (value == null) return DateTime.now();
  if (value is int) {
    return DateTime.fromMillisecondsSinceEpoch(value);
  }
  return DateTime.parse(value.toString());
}

String _dateToIso(DateTime date) => date.toIso8601String();
