import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lessons2/models/character.dart';

part 'states.freezed.dart';

@freezed
class StateBlocCharacters with _$StateBlocCharacters {
  factory StateBlocCharacters.initial() = StateCharactersInitial;
  factory StateBlocCharacters.loading() = StateCharactersLoading;
  factory StateBlocCharacters.data({required List<Character> data, required String searchText}) = StateCharactersData;
  factory StateBlocCharacters.error(String error) = StateCharactersError;
}
