part of '../bloc_locations.dart';

extension NextPage on LocationsBloc {
  Future<void> _nextPage(
    LocationsEventNextPage event,
    Emitter<LocationsState> emit,
  ) async {
    if (_isEndOfData) return;
    if (_isInProgress) return;
    _isInProgress = true;

    final currentData = state.maybeMap(
      data: (value) => value.data,
      orElse: () => <Location>[],
    );

    emit(LocationsState.data(
      data: currentData,
      searchText: event.name,
      isLoading: true,
    ));

    final result = await repo.nextPage(
      page: _currentPage + 1,
      name: event.name,
    );
    if (result.errorMessage != null) {
      emit(LocationsState.data(
        data: currentData,
        searchText: event.name,
        errorMessage: result.errorMessage,
      ));
      _isEndOfData = result.isEndOfData;
      _isInProgress = false;
      return;
    }

    emit(LocationsState.data(
      data: [...currentData, ...result.locations!],
      searchText: event.name,
    ));

    _currentPage++;
    _isEndOfData = result.isEndOfData;
    _isInProgress = false;
  }
}
