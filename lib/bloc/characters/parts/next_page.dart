part of '../bloc_characters.dart';

extension NextPage on CharactersBloc {
  Future<void> _nextPage(
    CharactersEventNextPage event,
    Emitter<CharactersState> emit,
  ) async {
    final currentData = state.maybeMap(
      data: (value) => value.data,
      orElse: () => <Character>[],
    );

    emit(CharactersState.data(
      data: currentData,
      searchText: event.name,
      isLoading: true,
    ));

    final result = await repo.nextPage(
      page: _currentPage + 1,
      name: event.name,
    );
    if (result.errorMessage != null) {
      emit(CharactersState.data(
        data: currentData,
        searchText: event.name,
        errorMessage: result.errorMessage,
        isEndOfData: result.isEndOfData,
      ));
      return;
    }

    emit(CharactersState.data(
      data: [...currentData, ...result.characters!],
      searchText: event.name,
      isEndOfData: result.isEndOfData,
    ));

    _currentPage++;
  }
}
