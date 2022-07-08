part of 'bloc_characters.dart';

abstract class StateBlocCharacters {}

class StateCharactersInitial extends StateBlocCharacters {}

class StateCharactersLoading extends StateBlocCharacters {}

class StateCharactersData extends StateBlocCharacters {
  StateCharactersData(this.data);

  final List<Character> data;
}

class StateCharactersError extends StateBlocCharacters {
  StateCharactersError(this.error);

  final String error;
}
