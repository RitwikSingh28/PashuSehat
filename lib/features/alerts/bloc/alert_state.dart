import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cattle_health/features/alerts/models/alert_model.dart';

part 'alert_state.freezed.dart';

@freezed
class AlertState with _$AlertState {
  const factory AlertState.initial() = _Initial;
  const factory AlertState.loading() = _Loading;
  const factory AlertState.loaded({
    required List<Alert> alerts,
    AlertStatus? filterStatus,
    DateTime? startDate,
    DateTime? endDate,
  }) = _Loaded;
  const factory AlertState.error(String message) = _Error;
  const factory AlertState.acknowledging() = _Acknowledging;
  const factory AlertState.acknowledged(Alert alert) = _Acknowledged;
}
