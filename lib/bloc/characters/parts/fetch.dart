part of '../bloc_characters.dart';

extension Fetch on CharactersBloc {
  Future<void> _fetch(
      CharactersEventFetch event, Emitter<CharactersState> emit) async {
    // emit(LocationsState.loading());
    final result = await repo.fetch(name: event.name);
    if (result.errorMessage != null) {
      emit(CharactersState.error(
        error: result.errorMessage!,
        searchText: event.name,
      ));
      return;
    }
    emit(CharactersState.data(
      data: result.characters!,
      searchText: event.name,
      isEndOfData: result.isEndOfData,
    ));
    _currentPage = 1;
  }
}
