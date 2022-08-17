import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lessons2/models/location.dart';
import 'package:lessons2/repo/repo_locations.dart';

import 'states.dart';

part 'events.dart';
part 'parts/fetch.dart';
part 'parts/next_page.dart';

class LocationsBloc extends Bloc<LocationsEvent, LocationsState> {
  LocationsBloc({required this.repo}) : super(LocationsStateInitial()) {
    on<LocationsEventFetch>(_fetch);
    on<LocationsEventNextPage>(_nextPage);
  }
  final RepoLocations repo;
  int _currentPage = 1;
  bool _isEndOfData = false;
  bool _isInProgress = false;
}
