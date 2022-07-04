import 'dart:convert';

import 'package:lessons2/generated/l10n.dart';
import 'package:lessons2/models/character.dart';
import 'package:http/http.dart' as http;

class RepoCharacters {
  Future<ResultRepoCharacters> readCharacters() async {
    try {
      final url = Uri.parse('https://rickandmortyapi.com/api/character');
      final response = await http.get(url);
      final data = jsonDecode(response.body);
      final charactersListJson = data['results'] as List;

      final charactersList = charactersListJson.map((character) {
        return Character.fromMap(character);
      }).toList();
      return ResultRepoCharacters(charactersList: charactersList);
    } catch (e) {
      print('Error: $e');
      return ResultRepoCharacters(errorMessage: S.current.somethingWentWrong);
    }
  }
}

class ResultRepoCharacters {
  ResultRepoCharacters({this.errorMessage, this.charactersList});

  final List<Character>? charactersList;
  final String? errorMessage;
}
