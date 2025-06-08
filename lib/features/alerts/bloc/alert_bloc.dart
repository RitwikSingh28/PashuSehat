import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cattle_health/features/alerts/bloc/alert_event.dart';
import 'package:cattle_health/features/alerts/bloc/alert_state.dart';
import 'package:cattle_health/features/alerts/repositories/alert_repository.dart';
import 'package:cattle_health/features/alerts/models/alert_model.dart';

class AlertBloc extends Bloc<AlertEvent, AlertState> {
  final AlertRepository _alertRepository;
  List<Alert> _currentAlerts = [];
  AlertStatus? _currentStatus;
  DateTime? _startDate;
  DateTime? _endDate;

  AlertBloc({
    required AlertRepository alertRepository,
  })  : _alertRepository = alertRepository,
        super(const AlertState.initial()) {
    on<FetchUserAlerts>(_onFetchUserAlerts);
    on<FetchCattleAlerts>(_onFetchCattleAlerts);
    on<AcknowledgeAlert>(_onAcknowledgeAlert);
    on<FilterAlerts>(_onFilterAlerts);
  }

  Future<void> _onFetchUserAlerts(
    FetchUserAlerts event,
    Emitter<AlertState> emit,
  ) async {
    emit(const AlertState.loading());

    try {
      final alerts = await _alertRepository.getUserAlerts(
        status: event.status,
        startDate: event.startDate,
        endDate: event.endDate,
      );

      _currentAlerts = alerts;
      _currentStatus = event.status;
      _startDate = event.startDate;
      _endDate = event.endDate;

      emit(AlertState.loaded(
        alerts: alerts,
        filterStatus: event.status,
        startDate: event.startDate,
        endDate: event.endDate,
      ));
    } on AlertException catch (e) {
      emit(AlertState.error(e.message ?? 'Failed to fetch alerts'));
    }
  }

  Future<void> _onFetchCattleAlerts(
    FetchCattleAlerts event,
    Emitter<AlertState> emit,
  ) async {
    emit(const AlertState.loading());

    try {
      final alerts = await _alertRepository.getCattleAlerts(
        event.cattleId,
        status: event.status,
        startDate: event.startDate,
        endDate: event.endDate,
      );

      _currentAlerts = alerts;
      _currentStatus = event.status;
      _startDate = event.startDate;
      _endDate = event.endDate;

      emit(AlertState.loaded(
        alerts: alerts,
        filterStatus: event.status,
        startDate: event.startDate,
        endDate: event.endDate,
      ));
    } on AlertException catch (e) {
      emit(AlertState.error(e.message ?? 'Failed to fetch alerts'));
    }
  }

  Future<void> _onAcknowledgeAlert(
    AcknowledgeAlert event,
    Emitter<AlertState> emit,
  ) async {
    emit(const AlertState.acknowledging());

    try {
      final acknowledgedAlert = await _alertRepository.acknowledgeAlert(event.alertId);

      // Update the alert in the current list
      final updatedAlerts = _currentAlerts.map((alert) {
        if (alert.id == event.alertId) {
          return acknowledgedAlert;
        }
        return alert;
      }).toList();

      _currentAlerts = updatedAlerts;

      // First emit the acknowledged state
      emit(AlertState.acknowledged(acknowledgedAlert));

      // Then emit the updated list
      emit(AlertState.loaded(
        alerts: updatedAlerts,
        filterStatus: _currentStatus,
        startDate: _startDate,
        endDate: _endDate,
      ));
    } on AlertException catch (e) {
      emit(AlertState.error(e.message ?? 'Failed to acknowledge alert'));
    }
  }

  Future<void> _onFilterAlerts(
    FilterAlerts event,
    Emitter<AlertState> emit,
  ) async {
    emit(const AlertState.loading());

    try {
      final alerts = await _alertRepository.getUserAlerts(
        status: event.status,
        startDate: event.startDate,
        endDate: event.endDate,
      );

      _currentAlerts = alerts;
      _currentStatus = event.status;
      _startDate = event.startDate;
      _endDate = event.endDate;

      emit(AlertState.loaded(
        alerts: alerts,
        filterStatus: event.status,
        startDate: event.startDate,
        endDate: event.endDate,
      ));
    } on AlertException catch (e) {
      emit(AlertState.error(e.message ?? 'Failed to filter alerts'));
    }
  }
}
