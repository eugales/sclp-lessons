part of 'bloc_locations.dart';

abstract class LocationsEvent {}

class LocationsEventFetch extends LocationsEvent {
  LocationsEventFetch({required this.name});
  String name;
}

class LocationsEventNextPage extends LocationsEvent {
  LocationsEventNextPage({required this.name});
  String name;
}
