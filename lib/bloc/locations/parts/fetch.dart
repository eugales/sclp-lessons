part of '../bloc_locations.dart';

extension Fetch on LocationsBloc {
  Future<void> _fetch(
      LocationsEventFetch event, Emitter<LocationsState> emit) async {
    // emit(LocationsState.loading());
    final result = await repo.fetch(name: event.name);
    if (result.errorMessage != null) {
      emit(LocationsState.error(result.errorMessage!));
      return;
    }
    emit(LocationsState.data(data: result.locations!, searchText: event.name));
    _currentPage = 1;
    _isInProgress = false;
    _isEndOfData = false;
  }
}
