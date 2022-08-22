import 'package:dio/dio.dart';
import 'package:lessons2/generated/l10n.dart';
import 'package:lessons2/models/character.dart';
import 'package:lessons2/repo/api.dart';

class RepoCharacters {
  Future<ResultRepoCharacters> fetch({required String name}) =>
      nextPage(name: name);
      
  Future<ResultRepoCharacters> nextPage({
    int page = 1,
    required String name,
  }) async {
    try {
      final dio = Api().dio;
      final response = await dio.get(
        '/character',
        queryParameters: {
          'name': name,
          'page': page,
        },
      );

      List results = response.data['results'];
      final list = results.map((item) => Character.fromJson(item)).toList();
      final isEndOfData = response.data['info']['next'] == null;
      return ResultRepoCharacters(characters: list, isEndOfData: isEndOfData);
    } on DioError catch (e) {
      final error = e.response?.data;

      return ResultRepoCharacters(errorMessage: error, isEndOfData: true);
    } catch (_) {
      return ResultRepoCharacters(errorMessage: S.current.somethingWentWrong);
    }
  }
}

class ResultRepoCharacters {
  ResultRepoCharacters({
    this.errorMessage,
    this.isEndOfData = false,
    this.characters,
  });

  final List<Character>? characters;
  final bool isEndOfData;
  final String? errorMessage;
}
