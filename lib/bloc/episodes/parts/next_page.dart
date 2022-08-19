part of '../episodes_bloc.dart';

extension NextPage on EpisodesBloc {
  Future<void> _nextPage(
    EpisodesEvent event,
    Emitter<EpisodesState> emit,
  ) async {
    final currentData = state.maybeMap(
      data: (value) => value.data,
      orElse: () => <Episode>[],
    );

    emit(EpisodesState.data(
      data: currentData,
      isLoading: true,
    ));

    final result = await repo.nextPage(
      page: _currentPage + 1,
    );
    if (result.errorMessage != null) {
      emit(EpisodesState.data(
        data: currentData,
        errorMessage: result.errorMessage,
        isEndOfData: result.isEndOfData,
      ));
      return;
    }

    emit(EpisodesState.data(
      data: [...currentData, ...result.episodes!],
      isEndOfData: result.isEndOfData,
    ));

    _currentPage++;
  }
}
