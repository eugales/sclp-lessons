import 'package:freezed_annotation/freezed_annotation.dart';
import 'location.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
class Character with _$Character {
  const factory Character({
    DateTime? created,
    List<String>? episode,
    String? gender,
    int? id,
    String? image,
    Location? location,
    String? name,
    Location? origin,
    String? species,
    String? status,
    String? type,
    String? url,
  }) = _Character;

  factory Character.fromJson(Map<String, Object?> json) =>
      _$CharacterFromJson(json);
}
