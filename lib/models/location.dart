import 'package:freezed_annotation/freezed_annotation.dart';
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