part of 'episodes_bloc.dart';

@freezed
class EpisodesEvent with _$EpisodesEvent {
  const factory EpisodesEvent.fetch() = EpisodesEventFetch;
  const factory EpisodesEvent.nextPage() = EpisodesEventNextPage;
}