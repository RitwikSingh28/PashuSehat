import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cattle_health/features/alerts/models/alert_model.dart';

part 'alert_event.freezed.dart';

@freezed
class AlertEvent with _$AlertEvent {
  const factory AlertEvent.fetchUserAlerts({
    AlertStatus? status,
    DateTime? startDate,
    DateTime? endDate,
  }) = FetchUserAlerts;

  const factory AlertEvent.fetchCattleAlerts({
    required String cattleId,
    AlertStatus? status,
    DateTime? startDate,
    DateTime? endDate,
  }) = FetchCattleAlerts;

  const factory AlertEvent.acknowledgeAlert(String alertId) = AcknowledgeAlert;

  const factory AlertEvent.filterAlerts({
    AlertStatus? status,
    DateTime? startDate,
    DateTime? endDate,
  }) = FilterAlerts;
}
