import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cattle_health/features/cattle/bloc/cattle_event.dart';
import 'package:cattle_health/features/cattle/bloc/cattle_state.dart';
import 'package:cattle_health/features/cattle/repositories/cattle_repository.dart';

import '../models/cattle_error.dart';

class CattleBloc extends Bloc<CattleEvent, CattleState> {
  final CattleRepository _cattleRepository;

  CattleBloc({required CattleRepository cattleRepository})
      : _cattleRepository = cattleRepository,
        super(const CattleState.initial()) {
    on<LoadCattleEvent>(_onLoadCattle);
    on<LoadSingleCattleEvent>(_onLoadSingleCattle);
    on<CreateCattleEvent>(_onCreateCattle);
    on<UpdateCattleEvent>(_onUpdateCattle);
    on<AddNoteEvent>(_onAddNote);
    on<DeleteCattleEvent>(_onDeleteCattle);
  }

  Future<void> _onLoadCattle(
    LoadCattleEvent event,
    Emitter<CattleState> emit,
  ) async {
    try {
      emit(const CattleState.loading());
      final cattle = await _cattleRepository.getAllCattle();
      emit(CattleState.loaded(cattle));
    } catch (e) {
      emit(CattleState.error(
        e is CattleError
            ? e
            : CattleError(
                error: 'UNKNOWN_ERROR', message: e.toString()),
      ));
    }
  }

  Future<void> _onLoadSingleCattle(
    LoadSingleCattleEvent event,
    Emitter<CattleState> emit,
  ) async {
    try {
      emit(const CattleState.loading());
      final cattle = await _cattleRepository.getCattle(event.cattleId);
      emit(CattleState.singleLoaded(cattle));
    } catch (e) {
      emit(CattleState.error(
        e is CattleError
            ? e
            : CattleError(
                error: 'UNKNOWN_ERROR', message: e.toString()),
      ));
    }
  }

  Future<void> _onCreateCattle(
    CreateCattleEvent event,
    Emitter<CattleState> emit,
  ) async {
    try {
      emit(const CattleState.loading());
      final cattle = await _cattleRepository.createCattle(
        tagId: event.tagId,
        name: event.name,
        dateOfBirth: event.dateOfBirth,
        gender: event.gender,
        ageGroup: event.ageGroup,
        breed: event.breed,
        governmentId: event.governmentId,
        fatherName: event.fatherName,
        motherName: event.motherName,
        notes: event.notes,
      );
      emit(CattleState.created(cattle));
    } catch (e) {
      emit(CattleState.error(
        e is CattleError
            ? e
            : CattleError(
                error: 'UNKNOWN_ERROR', message: e.toString()),
      ));
    }
  }

  Future<void> _onUpdateCattle(
    UpdateCattleEvent event,
    Emitter<CattleState> emit,
  ) async {
    try {
      emit(const CattleState.loading());
      final cattle = await _cattleRepository.updateCattle(
        event.cattleId,
        tagId: event.tagId,
        name: event.name,
        dateOfBirth: event.dateOfBirth,
        gender: event.gender,
        ageGroup: event.ageGroup,
        breed: event.breed,
        governmentId: event.governmentId,
        fatherName: event.fatherName,
        motherName: event.motherName,
        notes: event.notes,
      );
      emit(CattleState.updated(cattle));
    } catch (e) {
      emit(CattleState.error(
        e is CattleError
            ? e
            : CattleError(
                error: 'UNKNOWN_ERROR', message: e.toString()),
      ));
    }
  }

  Future<void> _onAddNote(
    AddNoteEvent event,
    Emitter<CattleState> emit,
  ) async {
    try {
      emit(const CattleState.loading());
      final cattle = await _cattleRepository.addNote(
        event.cattleId,
        event.note,
      );
      emit(CattleState.updated(cattle));
    } catch (e) {
      emit(CattleState.error(
        e is CattleError
            ? e
            : CattleError(
                error: 'UNKNOWN_ERROR', message: e.toString()),
      ));
    }
  }

  Future<void> _onDeleteCattle(
    DeleteCattleEvent event,
    Emitter<CattleState> emit,
  ) async {
    try {
      emit(const CattleState.loading());
      await _cattleRepository.deleteCattle(event.cattleId);
      emit(const CattleState.deleted());
    } catch (e) {
      emit(CattleState.error(
        e is CattleError
            ? e
            : CattleError(
                error: 'UNKNOWN_ERROR', message: e.toString()),
      ));
    }
  }
}
