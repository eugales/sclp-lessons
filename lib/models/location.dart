import 'dart:convert';

import 'package:flutter/foundation.dart';

class Location {
  final DateTime? created;
  final String? dimension;
  final int? id;
  final String? name;
  final List<String>? residents;
  final String? type;
  final String? url;
  Location({
    this.created,
    this.dimension,
    this.id,
    this.name,
    this.residents,
    this.type,
    this.url,
  });

  Location copyWith({
    DateTime? created,
    String? dimension,
    int? id,
    String? name,
    List<String>? residents,
    String? type,
    String? url,
  }) {
    return Location(
      created: created ?? this.created,
      dimension: dimension ?? this.dimension,
      id: id ?? this.id,
      name: name ?? this.name,
      residents: residents ?? this.residents,
      type: type ?? this.type,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'created': created?.millisecondsSinceEpoch,
      'dimension': dimension,
      'id': id,
      'name': name,
      'residents': residents,
      'type': type,
      'url': url,
    };
  }

  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(
      created: map['created'] != null ? DateTime.parse(map['created']) : null,
      dimension: map['dimension'],
      id: map['id']?.toInt(),
      name: map['name'],
      residents: map['residents'] != null ? List<String>.from(map['residents']) : null,
      type: map['type'],
      url: map['url'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Location.fromJson(String source) =>
      Location.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Location(created: $created, dimension: $dimension, id: $id, name: $name, residents: $residents, type: $type, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Location &&
        other.created == created &&
        other.dimension == dimension &&
        other.id == id &&
        other.name == name &&
        listEquals(other.residents, residents) &&
        other.type == type &&
        other.url == url;
  }

  @override
  int get hashCode {
    return created.hashCode ^
        dimension.hashCode ^
        id.hashCode ^
        name.hashCode ^
        residents.hashCode ^
        type.hashCode ^
        url.hashCode;
  }
}
