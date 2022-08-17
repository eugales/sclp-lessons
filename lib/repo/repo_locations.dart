import 'package:dio/dio.dart';

import 'package:lessons2/generated/l10n.dart';
import 'package:lessons2/models/location.dart';
import 'package:lessons2/repo/api.dart';

class RepoLocations {
  Future<ResultRepoLocations> fetch({required String name}) =>
      nextPage(name: name);

  Future<ResultRepoLocations> nextPage({
    int page = 1,
    required String name,
  }) async {
    try {
      final dio = Api().dio;
      final response = await dio.get(
        '/location',
        queryParameters: {
          'name': name,
          'page': page,
        },
      );

      List results = response.data['results'];
      final list = results.map((item) => Location.fromJson(item)).toList();
      final isEndOfData = response.data['info']['next'] == null;
      return ResultRepoLocations(locations: list, isEndOfData: isEndOfData);
    } on DioError catch (e) {
      final error = e.response?.data;

      return ResultRepoLocations(errorMessage: error, isEndOfData: true);
    } catch (_) {
      return ResultRepoLocations(errorMessage: S.current.somethingWentWrong);
    }
  }
}

class ResultRepoLocations {
  ResultRepoLocations({
    this.locations,
    this.isEndOfData = false,
    this.errorMessage,
  });

  final List<Location>? locations;
  final bool isEndOfData;
  final String? errorMessage;
}
