import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cattle_health/features/cattle/models/cattle_error.dart';
import 'package:cattle_health/features/cattle/models/cattle_model.dart';

part 'cattle_state.freezed.dart';

@freezed
class CattleState with _$CattleState {
  const factory CattleState.initial() = _Initial;
  const factory CattleState.loading() = _Loading;

  const factory CattleState.loaded(List<Cattle> cattle) = _Loaded;
  const factory CattleState.singleLoaded(Cattle cattle) = _SingleLoaded;

  const factory CattleState.created(Cattle cattle) = _Created;
  const factory CattleState.updated(Cattle cattle) = _Updated;
  const factory CattleState.deleted() = _Deleted;

  const factory CattleState.error(CattleError error) = _Error;
}
