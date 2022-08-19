// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'episodes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Episode _$EpisodeFromJson(Map<String, dynamic> json) {
  return _Episode.fromJson(json);
}

/// @nodoc
mixin _$Episode {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'air_date')
  String? get airDate => throw _privateConstructorUsedError;
  String get episode => throw _privateConstructorUsedError;
  List<String>? get characters => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodeCopyWith<Episode> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeCopyWith<$Res> {
  factory $EpisodeCopyWith(Episode value, $Res Function(Episode) then) =
      _$EpisodeCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'air_date') String? airDate,
      String episode,
      List<String>? characters,
      String url,
      String created});
}

/// @nodoc
class _$EpisodeCopyWithImpl<$Res> implements $EpisodeCopyWith<$Res> {
  _$EpisodeCopyWithImpl(this._value, this._then);

  final Episode _value;
  // ignore: unused_field
  final $Res Function(Episode) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? airDate = freezed,
    Object? episode = freezed,
    Object? characters = freezed,
    Object? url = freezed,
    Object? created = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      airDate: airDate == freezed
          ? _value.airDate
          : airDate // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: episode == freezed
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String,
      characters: characters == freezed
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_EpisodeCopyWith<$Res> implements $EpisodeCopyWith<$Res> {
  factory _$$_EpisodeCopyWith(
          _$_Episode value, $Res Function(_$_Episode) then) =
      __$$_EpisodeCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'air_date') String? airDate,
      String episode,
      List<String>? characters,
      String url,
      String created});
}

/// @nodoc
class __$$_EpisodeCopyWithImpl<$Res> extends _$EpisodeCopyWithImpl<$Res>
    implements _$$_EpisodeCopyWith<$Res> {
  __$$_EpisodeCopyWithImpl(_$_Episode _value, $Res Function(_$_Episode) _then)
      : super(_value, (v) => _then(v as _$_Episode));

  @override
  _$_Episode get _value => super._value as _$_Episode;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? airDate = freezed,
    Object? episode = freezed,
    Object? characters = freezed,
    Object? url = freezed,
    Object? created = freezed,
  }) {
    return _then(_$_Episode(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      airDate: airDate == freezed
          ? _value.airDate
          : airDate // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: episode == freezed
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String,
      characters: characters == freezed
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Episode implements _Episode {
  _$_Episode(
      {required this.id,
      required this.name,
      @JsonKey(name: 'air_date') this.airDate,
      required this.episode,
      final List<String>? characters,
      required this.url,
      required this.created})
      : _characters = characters;

  factory _$_Episode.fromJson(Map<String, dynamic> json) =>
      _$$_EpisodeFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'air_date')
  final String? airDate;
  @override
  final String episode;
  final List<String>? _characters;
  @override
  List<String>? get characters {
    final value = _characters;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String url;
  @override
  final String created;

  @override
  String toString() {
    return 'Episode(id: $id, name: $name, airDate: $airDate, episode: $episode, characters: $characters, url: $url, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Episode &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.airDate, airDate) &&
            const DeepCollectionEquality().equals(other.episode, episode) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.created, created));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(airDate),
      const DeepCollectionEquality().hash(episode),
      const DeepCollectionEquality().hash(_characters),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(created));

  @JsonKey(ignore: true)
  @override
  _$$_EpisodeCopyWith<_$_Episode> get copyWith =>
      __$$_EpisodeCopyWithImpl<_$_Episode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EpisodeToJson(
      this,
    );
  }
}

abstract class _Episode implements Episode {
  factory _Episode(
      {required final int id,
      required final String name,
      @JsonKey(name: 'air_date') final String? airDate,
      required final String episode,
      final List<String>? characters,
      required final String url,
      required final String created}) = _$_Episode;

  factory _Episode.fromJson(Map<String, dynamic> json) = _$_Episode.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'air_date')
  String? get airDate;
  @override
  String get episode;
  @override
  List<String>? get characters;
  @override
  String get url;
  @override
  String get created;
  @override
  @JsonKey(ignore: true)
  _$$_EpisodeCopyWith<_$_Episode> get copyWith =>
      throw _privateConstructorUsedError;
}

EpisodeResult _$EpisodeResultFromJson(Map<String, dynamic> json) {
  return _EpisodeResult.fromJson(json);
}

/// @nodoc
mixin _$EpisodeResult {
  Info? get info => throw _privateConstructorUsedError;
  List<EpisodeResult>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodeResultCopyWith<EpisodeResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeResultCopyWith<$Res> {
  factory $EpisodeResultCopyWith(
          EpisodeResult value, $Res Function(EpisodeResult) then) =
      _$EpisodeResultCopyWithImpl<$Res>;
  $Res call({Info? info, List<EpisodeResult>? results});

  $InfoCopyWith<$Res>? get info;
}

/// @nodoc
class _$EpisodeResultCopyWithImpl<$Res>
    implements $EpisodeResultCopyWith<$Res> {
  _$EpisodeResultCopyWithImpl(this._value, this._then);

  final EpisodeResult _value;
  // ignore: unused_field
  final $Res Function(EpisodeResult) _then;

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
              as List<EpisodeResult>?,
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
abstract class _$$_EpisodeResultCopyWith<$Res>
    implements $EpisodeResultCopyWith<$Res> {
  factory _$$_EpisodeResultCopyWith(
          _$_EpisodeResult value, $Res Function(_$_EpisodeResult) then) =
      __$$_EpisodeResultCopyWithImpl<$Res>;
  @override
  $Res call({Info? info, List<EpisodeResult>? results});

  @override
  $InfoCopyWith<$Res>? get info;
}

/// @nodoc
class __$$_EpisodeResultCopyWithImpl<$Res>
    extends _$EpisodeResultCopyWithImpl<$Res>
    implements _$$_EpisodeResultCopyWith<$Res> {
  __$$_EpisodeResultCopyWithImpl(
      _$_EpisodeResult _value, $Res Function(_$_EpisodeResult) _then)
      : super(_value, (v) => _then(v as _$_EpisodeResult));

  @override
  _$_EpisodeResult get _value => super._value as _$_EpisodeResult;

  @override
  $Res call({
    Object? info = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_EpisodeResult(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info?,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<EpisodeResult>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EpisodeResult implements _EpisodeResult {
  _$_EpisodeResult({this.info, final List<EpisodeResult>? results})
      : _results = results;

  factory _$_EpisodeResult.fromJson(Map<String, dynamic> json) =>
      _$$_EpisodeResultFromJson(json);

  @override
  final Info? info;
  final List<EpisodeResult>? _results;
  @override
  List<EpisodeResult>? get results {
    final value = _results;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EpisodeResult(info: $info, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EpisodeResult &&
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
  _$$_EpisodeResultCopyWith<_$_EpisodeResult> get copyWith =>
      __$$_EpisodeResultCopyWithImpl<_$_EpisodeResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EpisodeResultToJson(
      this,
    );
  }
}

abstract class _EpisodeResult implements EpisodeResult {
  factory _EpisodeResult(
      {final Info? info,
      final List<EpisodeResult>? results}) = _$_EpisodeResult;

  factory _EpisodeResult.fromJson(Map<String, dynamic> json) =
      _$_EpisodeResult.fromJson;

  @override
  Info? get info;
  @override
  List<EpisodeResult>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_EpisodeResultCopyWith<_$_EpisodeResult> get copyWith =>
      throw _privateConstructorUsedError;
}
