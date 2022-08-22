import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lessons2/repo/repo_characters.dart';

import 'states.dart';

part 'events.dart';

class BlocCharacters extends Bloc<EventBlocCharacters, StateBlocCharacters> {
  BlocCharacters({required this.repo}) : super(StateCharactersInitial()) {
    on<EventCharactersFilterByName>((event, emit) async {
      emit(StateCharactersLoading());
      final result = await repo.filterByName(event.name);
      if (result.errorMessage != null) {
        emit(StateBlocCharacters.error(
          error: result.errorMessage!,
          searchText: event.name,
        ));
        return;
      }
      emit(StateCharactersData(
        data: result.charactersList!,
        searchText: event.name,
      ));
    });
  }
  final RepoCharacters repo;
}
