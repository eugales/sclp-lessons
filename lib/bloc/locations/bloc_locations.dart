import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lessons2/repo/repo_locations.dart';

import 'states.dart';

part 'events.dart';

class LocationsBloc extends Bloc<LocationsEvent, LocationsState> {
  LocationsBloc({required this.repo}) : super(LocationsStateInitial()) {
    on<LocationsEventFilterByName>((event, emit) async {
      emit(LocationsStateLoading());
      final result = await repo.filterByName(event.name);
      if (result.errorMessage != null) {
        emit(LocationsStateError(result.errorMessage!));
        return;
      }
      emit(LocationsStateData(data: result.locations!));
    });
  }
  final RepoLocations repo;
}
