import 'package:dio/dio.dart';
import 'package:lessons2/generated/l10n.dart';
import 'package:lessons2/models/episodes.dart';
import 'package:lessons2/repo/api.dart';

class RepoEpisodes {
  RepoEpisodes();

  Future<ResultRepoEpisodes> fetch() => nextPage();

  Future<ResultRepoEpisodes> nextPage({
    int page = 1,
  }) async {
    try {
      final response = await Api().dio.get('/episode?page=$page');
      List results = response.data['results'];
      final episodes = results.map((json) => Episode.fromJson(json)).toList();
      bool isEndOfData = response.data['info']['next'] == null;
      return ResultRepoEpisodes(episodes: episodes, isEndOfData: isEndOfData);
    } on DioError catch (e) {
      final error = e.response?.data;
      return ResultRepoEpisodes(errorMessage: error, isEndOfData: true);
    } catch (e) {
      return ResultRepoEpisodes(
          errorMessage: S.current.somethingWentWrong, isEndOfData: false);
    }
  }
}

class ResultRepoEpisodes {
  ResultRepoEpisodes({
    this.episodes,
    required this.isEndOfData,
    this.errorMessage,
  });

  List<Episode>? episodes;
  bool isEndOfData;
  String? errorMessage;
}
