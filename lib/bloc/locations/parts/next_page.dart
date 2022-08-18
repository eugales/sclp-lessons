part of '../bloc_locations.dart';

extension NextPage on LocationsBloc {
  Future<void> _nextPage(
    LocationsEventNextPage event,
    Emitter<LocationsState> emit,
  ) async {
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
        isEndOfData: result.isEndOfData,
      ));
      return;
    }

    emit(LocationsState.data(
      data: [...currentData, ...result.locations!],
      searchText: event.name,
      isEndOfData: result.isEndOfData,
    ));

    _currentPage++;
  }
}
