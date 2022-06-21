import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:lessons2/constants/app_assets.dart';

class Character {
  String firstName;
  String lastName;
  String? avatar;
  String kind;
  String sex;
  String status;

  Character({
    required this.firstName,
    required this.lastName,
    required this.avatar,
    required this.kind,
    required this.sex,
    required this.status,
  });

  String get fullName => "$firstName $lastName";

  String get kindAndSex => "$kind, $sex";

  Character copyWith({
    String? firstName,
    String? lastName,
    String? avatar,
    String? kind,
    String? sex,
    String? status,
  }) {
    return Character(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      avatar: avatar ?? this.avatar,
      kind: kind ?? this.kind,
      sex: sex ?? this.sex,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'avatar': avatar,
      'kind': kind,
      'sex': sex,
      'status': status,
    };
  }

  factory Character.fromMap(Map<String, dynamic> map) {
    return Character(
      firstName: map['firstName'] ?? '',
      lastName: map['lastName'] ?? '',
      avatar: map['avatar'],
      kind: map['kind'] ?? '',
      sex: map['sex'] ?? '',
      status: map['status'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Character.fromJson(String source) =>
      Character.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Character(firstName: $firstName, lastName: $lastName, avatar: $avatar, kind: $kind, sex: $sex, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Character &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.avatar == avatar &&
        other.kind == kind &&
        other.sex == sex &&
        other.status == status;
  }

  @override
  int get hashCode {
    return firstName.hashCode ^
        lastName.hashCode ^
        avatar.hashCode ^
        kind.hashCode ^
        sex.hashCode ^
        status.hashCode;
  }
}
