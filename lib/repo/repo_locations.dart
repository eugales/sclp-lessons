import 'package:lessons2/generated/l10n.dart';
import 'package:lessons2/models/location.dart';
import 'package:lessons2/repo/api.dart';

class RepoLocations {
  Future<ResultRepoLocations> filterByName(String name) async {
    try {
      final response = await Api().dio.get(
        '/location',
        queryParameters: {'name': name},
      );

      List results = response.data['results'] ?? [];
      List<Location> locations =
          results.map((item) => Location.fromJson(item)).toList();

      return ResultRepoLocations(locations: locations);
    } catch (e) {
      return ResultRepoLocations(errorMessage: S.current.somethingWentWrong);
    }
  }
}

class ResultRepoLocations {
  ResultRepoLocations({this.locations, this.errorMessage});

  final List<Location>? locations;
  final String? errorMessage;
}
