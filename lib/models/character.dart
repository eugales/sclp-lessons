import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'location.dart';

class Character {
  final DateTime? created;
  final List<String>? episode;
  final String? gender;
  final int? id;
  final String? image;
  final Location? location;
  final String? name;
  final Location? origin;
  final String? species;
  final String? status;
  final String? type;
  final String? url;
  Character({
    this.created,
    this.episode,
    this.gender,
    this.id,
    this.image,
    this.location,
    this.name,
    this.origin,
    this.species,
    this.status,
    this.type,
    this.url,
  });

  Character copyWith({
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
  }) {
    return Character(
      created: created ?? this.created,
      episode: episode ?? this.episode,
      gender: gender ?? this.gender,
      id: id ?? this.id,
      image: image ?? this.image,
      location: location ?? this.location,
      name: name ?? this.name,
      origin: origin ?? this.origin,
      species: species ?? this.species,
      status: status ?? this.status,
      type: type ?? this.type,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'created': created?.millisecondsSinceEpoch,
      'episode': episode,
      'gender': gender,
      'id': id,
      'image': image,
      'location': location?.toMap(),
      'name': name,
      'origin': origin?.toMap(),
      'species': species,
      'status': status,
      'type': type,
      'url': url,
    };
  }

  factory Character.fromMap(Map<String, dynamic> map) {
    return Character(
      created: map['created'] != null ? DateTime.parse(map['created']) : null,
      episode: map['episode'] != null ? List<String>.from(map['episode']) : null,
      gender: map['gender'],
      id: map['id']?.toInt(),
      image: map['image'],
      location:
          map['location'] != null ? Location.fromMap(map['location']) : null,
      name: map['name'],
      origin: map['origin'] != null ? Location.fromMap(map['origin']) : null,
      species: map['species'],
      status: map['status'],
      type: map['type'],
      url: map['url'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Character.fromJson(String source) =>
      Character.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Character(created: $created, episode: $episode, gender: $gender, id: $id, image: $image, location: $location, name: $name, origin: $origin, species: $species, status: $status, type: $type, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Character &&
        other.created == created &&
        listEquals(other.episode, episode) &&
        other.gender == gender &&
        other.id == id &&
        other.image == image &&
        other.location == location &&
        other.name == name &&
        other.origin == origin &&
        other.species == species &&
        other.status == status &&
        other.type == type &&
        other.url == url;
  }

  @override
  int get hashCode {
    return created.hashCode ^
        episode.hashCode ^
        gender.hashCode ^
        id.hashCode ^
        image.hashCode ^
        location.hashCode ^
        name.hashCode ^
        origin.hashCode ^
        species.hashCode ^
        status.hashCode ^
        type.hashCode ^
        url.hashCode;
  }
}
