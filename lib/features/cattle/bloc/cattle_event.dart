import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cattle_health/features/cattle/models/cattle_model.dart';

part 'cattle_event.freezed.dart';

@freezed
class CattleEvent with _$CattleEvent {
  const factory CattleEvent.loadCattle() = LoadCattleEvent;

  const factory CattleEvent.loadSingleCattle(String cattleId) = LoadSingleCattleEvent;

  const factory CattleEvent.createCattle({
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
  }) = CreateCattleEvent;

  const factory CattleEvent.updateCattle({
    required String cattleId,
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
  }) = UpdateCattleEvent;

  const factory CattleEvent.addNote({
    required String cattleId,
    required String note,
  }) = AddNoteEvent;

  const factory CattleEvent.deleteCattle(String cattleId) = DeleteCattleEvent;
}
