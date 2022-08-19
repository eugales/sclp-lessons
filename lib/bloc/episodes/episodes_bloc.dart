import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:lessons2/models/episodes.dart';
import 'package:lessons2/repo/repo_episodes.dart';

part 'episodes_bloc.freezed.dart';
part 'event.dart';
part 'parts/fetch.dart';
part 'parts/next_page.dart';
part 'states.dart';

class EpisodesBloc extends Bloc<EpisodesEvent, EpisodesState> {
  EpisodesBloc({required this.repo}) : super(const EpisodesState.initial()) {
    on<EpisodesEventFetch>(_fetch);
    on<EpisodesEventNextPage>(_nextPage);
  }

  RepoEpisodes repo;
  int _currentPage = 1;
}
