part of '../episodes_bloc.dart';

extension Fetch on EpisodesBloc {
  Future<void> _fetch(EpisodesEvent event, Emitter<EpisodesState> emit) async {
    final result = await repo.fetch();

    if (result.errorMessage != null) {
      emit(EpisodesState.error(errorMessage: result.errorMessage!));
      return;
    }

    emit(
      EpisodesState.data(
        data: result.episodes!,
        isEndOfData: result.isEndOfData,
      ),
    );

    _currentPage++;
  }
}
