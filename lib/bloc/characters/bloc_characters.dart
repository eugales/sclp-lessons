import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lessons2/bloc/locations/states.dart';
import 'package:lessons2/models/character.dart';
import 'package:lessons2/repo/repo_characters.dart';

import 'states.dart';

part 'events.dart';
part 'parts/fetch.dart';
part 'parts/next_page.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  CharactersBloc({required this.repo}) : super(CharactersState.initial()) {
    on<CharactersEventFetch>(_fetch);
    on<CharactersEventNextPage>(_nextPage, transformer: droppable());
  }
  final RepoCharacters repo;
  int _currentPage = 1;
}
