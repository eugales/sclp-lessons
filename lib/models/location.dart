import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lessons2/models/info.dart';
import 'package:lessons2/models/item.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
class Location with _$Location implements Item  {
  const factory Location({
    String? name,
    String? type,
    String? dimension,
    List<String>? residents,
    String? url,
    DateTime? created,
  }) = _Location;

  factory Location.fromJson(Map<String, Object?> json) => _$LocationFromJson(json);
}

@freezed
class LocationResult with _$LocationResult{
  const factory LocationResult({
    Info? info,
    List<Location>? results,
  }) = _LocationResult;

  factory LocationResult.fromJson(Map<String, Object?> json) =>
      _$LocationResultFromJson(json);
}
