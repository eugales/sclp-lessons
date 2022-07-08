import 'package:dio/dio.dart';
import 'package:lessons2/generated/l10n.dart';
import 'package:lessons2/models/character.dart';
import 'package:lessons2/repo/api.dart';

class RepoCharacters {
  Future<ResultRepoCharacters> filterByName(String name) async {
    try {
      final response = await Api().dio.get(
        '/character/',
        queryParameters: {'name': name},
      );
      List charactersListJson = response.data['results'] ?? [];

      final charactersList = charactersListJson.map((character) {
        return Character.fromMap(character);
      }).toList();
      return ResultRepoCharacters(charactersList: charactersList);
    } catch (e) {
      return ResultRepoCharacters(errorMessage: S.current.somethingWentWrong);
    }
  }
}

class ResultRepoCharacters {
  ResultRepoCharacters({this.errorMessage, this.charactersList});

  final List<Character>? charactersList;
  final String? errorMessage;
}
