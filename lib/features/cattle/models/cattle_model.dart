import 'package:freezed_annotation/freezed_annotation.dart';

part 'cattle_model.freezed.dart';
part 'cattle_model.g.dart';

@freezed
class Cattle with _$Cattle {
  const factory Cattle({
    required String id,
    required String name,
    required String tagId,
    required DateTime dateOfBirth,
    required List<CattleNote> notes,
  }) = _Cattle;

  factory Cattle.fromJson(Map<String, dynamic> json) => _$CattleFromJson(json);
}

@freezed
class CattleNote with _$CattleNote {
  const factory CattleNote({
    required String id,
    required String content,
    required DateTime timestamp,
  }) = _CattleNote;

  factory CattleNote.fromJson(Map<String, dynamic> json) => _$CattleNoteFromJson(json);
}
