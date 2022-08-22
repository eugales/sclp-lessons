part of 'bloc_characters.dart';

abstract class CharactersEvent {}

class CharactersEventFetch extends CharactersEvent {
  CharactersEventFetch({required this.name});
  String name;
}

class CharactersEventNextPage extends CharactersEvent {
  CharactersEventNextPage({required this.name});
  String name;
}
