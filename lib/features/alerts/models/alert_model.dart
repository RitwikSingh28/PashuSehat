import 'package:freezed_annotation/freezed_annotation.dart';

part 'alert_model.g.dart';
part 'alert_model.freezed.dart';

@freezed
class Alert with _$Alert {
  const factory Alert({
    required String id,
    required String cattleId,
    required String cattleName,
    required String tagId,
    required DateTime timestamp,
    required AlertType type,
    required double value, // The measured value for the alert type
  }) = _Alert;

  factory Alert.fromJson(Map<String, dynamic> json) => _$AlertFromJson(json);
}

enum AlertType {
  temperature,  // Body temperature in Celsius
  pulseRate,    // Beats per minute
  motion        // Motion sensor value
}
