part of 'bloc_characters.dart';

abstract class EventBlocCharacters {}

class EventCharactersFilterByName extends EventBlocCharacters {
  EventCharactersFilterByName({required this.name});

  final String name;
}
