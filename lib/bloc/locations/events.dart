part of 'bloc_locations.dart';

abstract class LocationsEvent {}

class LocationsEventFilterByName extends LocationsEvent {
  LocationsEventFilterByName(this.name);

  String name;
}

