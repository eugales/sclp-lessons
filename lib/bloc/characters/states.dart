import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lessons2/models/character.dart';

part 'states.freezed.dart';

@freezed
class CharactersState with _$CharactersState {
  factory CharactersState.initial() = CharactersStateInitial;
  factory CharactersState.loading() = CharactersStateLoading;
  factory CharactersState.data({
    required List<Character> data,
    required String searchText,
    @Default(false) bool isLoading,
    @Default(false) bool isEndOfData,
    String? errorMessage
  }) = CharactersStateData;
  factory CharactersState.error({
    required String error,
    required String searchText,
  }) = CharactersStateError;
}

