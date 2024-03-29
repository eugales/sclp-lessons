// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get dimension => throw _privateConstructorUsedError;
  List<String>? get residents => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  DateTime? get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      String? type,
      String? dimension,
      List<String>? residents,
      String? url,
      DateTime? created});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res> implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  final Location _value;
  // ignore: unused_field
  final $Res Function(Location) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? dimension = freezed,
    Object? residents = freezed,
    Object? url = freezed,
    Object? created = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      dimension: dimension == freezed
          ? _value.dimension
          : dimension // ignore: cast_nullable_to_non_nullable
              as String?,
      residents: residents == freezed
          ? _value.residents
          : residents // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$$_LocationCopyWith(
          _$_Location value, $Res Function(_$_Location) then) =
      __$$_LocationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      String? type,
      String? dimension,
      List<String>? residents,
      String? url,
      DateTime? created});
}

/// @nodoc
class __$$_LocationCopyWithImpl<$Res> extends _$LocationCopyWithImpl<$Res>
    implements _$$_LocationCopyWith<$Res> {
  __$$_LocationCopyWithImpl(
      _$_Location _value, $Res Function(_$_Location) _then)
      : super(_value, (v) => _then(v as _$_Location));

  @override
  _$_Location get _value => super._value as _$_Location;

  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? dimension = freezed,
    Object? residents = freezed,
    Object? url = freezed,
    Object? created = freezed,
  }) {
    return _then(_$_Location(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      dimension: dimension == freezed
          ? _value.dimension
          : dimension // ignore: cast_nullable_to_non_nullable
              as String?,
      residents: residents == freezed
          ? _value._residents
          : residents // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Location implements _Location {
  const _$_Location(
      {this.name,
      this.type,
      this.dimension,
      final List<String>? residents,
      this.url,
      this.created})
      : _residents = residents;

  factory _$_Location.fromJson(Map<String, dynamic> json) =>
      _$$_LocationFromJson(json);

  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? dimension;
  final List<String>? _residents;
  @override
  List<String>? get residents {
    final value = _residents;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? url;
  @override
  final DateTime? created;

  @override
  String toString() {
    return 'Location(name: $name, type: $type, dimension: $dimension, residents: $residents, url: $url, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Location &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.dimension, dimension) &&
            const DeepCollectionEquality()
                .equals(other._residents, _residents) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.created, created));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(dimension),
      const DeepCollectionEquality().hash(_residents),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(created));

  @JsonKey(ignore: true)
  @override
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      __$$_LocationCopyWithImpl<_$_Location>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {final String? name,
      final String? type,
      final String? dimension,
      final List<String>? residents,
      final String? url,
      final DateTime? created}) = _$_Location;

  factory _Location.fromJson(Map<String, dynamic> json) = _$_Location.fromJson;

  @override
  String? get name;
  @override
  String? get type;
  @override
  String? get dimension;
  @override
  List<String>? get residents;
  @override
  String? get url;
  @override
  DateTime? get created;
  @override
  @JsonKey(ignore: true)
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationResult _$LocationResultFromJson(Map<String, dynamic> json) {
  return _LocationResult.fromJson(json);
}

/// @nodoc
mixin _$LocationResult {
  Info? get info => throw _privateConstructorUsedError;
  List<Location>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationResultCopyWith<LocationResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationResultCopyWith<$Res> {
  factory $LocationResultCopyWith(
          LocationResult value, $Res Function(LocationResult) then) =
      _$LocationResultCopyWithImpl<$Res>;
  $Res call({Info? info, List<Location>? results});

  $InfoCopyWith<$Res>? get info;
}

/// @nodoc
class _$LocationResultCopyWithImpl<$Res>
    implements $LocationResultCopyWith<$Res> {
  _$LocationResultCopyWithImpl(this._value, this._then);

  final LocationResult _value;
  // ignore: unused_field
  final $Res Function(LocationResult) _then;

  @override
  $Res call({
    Object? info = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Location>?,
    ));
  }

  @override
  $InfoCopyWith<$Res>? get info {
    if (_value.info == null) {
      return null;
    }

    return $InfoCopyWith<$Res>(_value.info!, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class _$$_LocationResultCopyWith<$Res>
    implements $LocationResultCopyWith<$Res> {
  factory _$$_LocationResultCopyWith(
          _$_LocationResult value, $Res Function(_$_LocationResult) then) =
      __$$_LocationResultCopyWithImpl<$Res>;
  @override
  $Res call({Info? info, List<Location>? results});

  @override
  $InfoCopyWith<$Res>? get info;
}

/// @nodoc
class __$$_LocationResultCopyWithImpl<$Res>
    extends _$LocationResultCopyWithImpl<$Res>
    implements _$$_LocationResultCopyWith<$Res> {
  __$$_LocationResultCopyWithImpl(
      _$_LocationResult _value, $Res Function(_$_LocationResult) _then)
      : super(_value, (v) => _then(v as _$_LocationResult));

  @override
  _$_LocationResult get _value => super._value as _$_LocationResult;

  @override
  $Res call({
    Object? info = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_LocationResult(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info?,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Location>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationResult implements _LocationResult {
  const _$_LocationResult({this.info, final List<Location>? results})
      : _results = results;

  factory _$_LocationResult.fromJson(Map<String, dynamic> json) =>
      _$$_LocationResultFromJson(json);

  @override
  final Info? info;
  final List<Location>? _results;
  @override
  List<Location>? get results {
    final value = _results;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LocationResult(info: $info, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationResult &&
            const DeepCollectionEquality().equals(other.info, info) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(info),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$_LocationResultCopyWith<_$_LocationResult> get copyWith =>
      __$$_LocationResultCopyWithImpl<_$_LocationResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationResultToJson(
      this,
    );
  }
}

abstract class _LocationResult implements LocationResult {
  const factory _LocationResult(
      {final Info? info, final List<Location>? results}) = _$_LocationResult;

  factory _LocationResult.fromJson(Map<String, dynamic> json) =
      _$_LocationResult.fromJson;

  @override
  Info? get info;
  @override
  List<Location>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_LocationResultCopyWith<_$_LocationResult> get copyWith =>
      throw _privateConstructorUsedError;
}
