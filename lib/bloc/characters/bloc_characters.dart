import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lessons2/models/character.dart';
import 'package:lessons2/repo/repo_characters.dart';

part 'event_bloc_characters.dart';
part 'state_bloc_characters.dart';

class BlocCharacters extends Bloc<EventBlocCharacters, StateBlocCharacters> {
  BlocCharacters({required this.repo}) : super(StateCharactersInitial()) {
    on<EventCharactersFilterByName>((event, emit) async {
      emit.call(StateCharactersLoading());
      // await Future.delayed(const Duration(seconds: 1));
      final result = await repo.filterByName(event.name);
      if (result.errorMessage != null) {
        emit.call(StateCharactersError(result.errorMessage!));
        return;
      }
      emit.call(StateCharactersData(result.charactersList!));
    });
  }

  final RepoCharacters repo;
}
