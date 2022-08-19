part of 'episodes_bloc.dart';

@freezed
class EpisodesState with _$EpisodesState {
  const factory EpisodesState.initial() = _EpisodesStateInitial;
  const factory EpisodesState.loading() = _EpisodesStateLoading;
  const factory EpisodesState.data({
    required List<Episode> data,
    @Default(false) bool isLoading,
    @Default(false) bool isEndOfData,
    String? errorMessage
  }) = _EpisodesStateData;
  const factory EpisodesState.error({required String errorMessage}) = _EpisodesStateError;
}
