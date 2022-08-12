// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StateBlocCharacters {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Character> data, String searchText) data,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> data, String searchText)? data,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> data, String searchText)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StateCharactersInitial value) initial,
    required TResult Function(StateCharactersLoading value) loading,
    required TResult Function(StateCharactersData value) data,
    required TResult Function(StateCharactersError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StateCharactersInitial value)? initial,
    TResult Function(StateCharactersLoading value)? loading,
    TResult Function(StateCharactersData value)? data,
    TResult Function(StateCharactersError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateCharactersInitial value)? initial,
    TResult Function(StateCharactersLoading value)? loading,
    TResult Function(StateCharactersData value)? data,
    TResult Function(StateCharactersError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateBlocCharactersCopyWith<$Res> {
  factory $StateBlocCharactersCopyWith(
          StateBlocCharacters value, $Res Function(StateBlocCharacters) then) =
      _$StateBlocCharactersCopyWithImpl<$Res>;
}

/// @nodoc
class _$StateBlocCharactersCopyWithImpl<$Res>
    implements $StateBlocCharactersCopyWith<$Res> {
  _$StateBlocCharactersCopyWithImpl(this._value, this._then);

  final StateBlocCharacters _value;
  // ignore: unused_field
  final $Res Function(StateBlocCharacters) _then;
}

/// @nodoc
abstract class _$$StateCharactersInitialCopyWith<$Res> {
  factory _$$StateCharactersInitialCopyWith(_$StateCharactersInitial value,
          $Res Function(_$StateCharactersInitial) then) =
      __$$StateCharactersInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StateCharactersInitialCopyWithImpl<$Res>
    extends _$StateBlocCharactersCopyWithImpl<$Res>
    implements _$$StateCharactersInitialCopyWith<$Res> {
  __$$StateCharactersInitialCopyWithImpl(_$StateCharactersInitial _value,
      $Res Function(_$StateCharactersInitial) _then)
      : super(_value, (v) => _then(v as _$StateCharactersInitial));

  @override
  _$StateCharactersInitial get _value =>
      super._value as _$StateCharactersInitial;
}

/// @nodoc

class _$StateCharactersInitial implements StateCharactersInitial {
  _$StateCharactersInitial();

  @override
  String toString() {
    return 'StateBlocCharacters.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StateCharactersInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Character> data, String searchText) data,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> data, String searchText)? data,
    TResult Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> data, String searchText)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StateCharactersInitial value) initial,
    required TResult Function(StateCharactersLoading value) loading,
    required TResult Function(StateCharactersData value) data,
    required TResult Function(StateCharactersError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StateCharactersInitial value)? initial,
    TResult Function(StateCharactersLoading value)? loading,
    TResult Function(StateCharactersData value)? data,
    TResult Function(StateCharactersError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateCharactersInitial value)? initial,
    TResult Function(StateCharactersLoading value)? loading,
    TResult Function(StateCharactersData value)? data,
    TResult Function(StateCharactersError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class StateCharactersInitial implements StateBlocCharacters {
  factory StateCharactersInitial() = _$StateCharactersInitial;
}

/// @nodoc
abstract class _$$StateCharactersLoadingCopyWith<$Res> {
  factory _$$StateCharactersLoadingCopyWith(_$StateCharactersLoading value,
          $Res Function(_$StateCharactersLoading) then) =
      __$$StateCharactersLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StateCharactersLoadingCopyWithImpl<$Res>
    extends _$StateBlocCharactersCopyWithImpl<$Res>
    implements _$$StateCharactersLoadingCopyWith<$Res> {
  __$$StateCharactersLoadingCopyWithImpl(_$StateCharactersLoading _value,
      $Res Function(_$StateCharactersLoading) _then)
      : super(_value, (v) => _then(v as _$StateCharactersLoading));

  @override
  _$StateCharactersLoading get _value =>
      super._value as _$StateCharactersLoading;
}

/// @nodoc

class _$StateCharactersLoading implements StateCharactersLoading {
  _$StateCharactersLoading();

  @override
  String toString() {
    return 'StateBlocCharacters.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StateCharactersLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Character> data, String searchText) data,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> data, String searchText)? data,
    TResult Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> data, String searchText)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StateCharactersInitial value) initial,
    required TResult Function(StateCharactersLoading value) loading,
    required TResult Function(StateCharactersData value) data,
    required TResult Function(StateCharactersError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StateCharactersInitial value)? initial,
    TResult Function(StateCharactersLoading value)? loading,
    TResult Function(StateCharactersData value)? data,
    TResult Function(StateCharactersError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateCharactersInitial value)? initial,
    TResult Function(StateCharactersLoading value)? loading,
    TResult Function(StateCharactersData value)? data,
    TResult Function(StateCharactersError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class StateCharactersLoading implements StateBlocCharacters {
  factory StateCharactersLoading() = _$StateCharactersLoading;
}

/// @nodoc
abstract class _$$StateCharactersDataCopyWith<$Res> {
  factory _$$StateCharactersDataCopyWith(_$StateCharactersData value,
          $Res Function(_$StateCharactersData) then) =
      __$$StateCharactersDataCopyWithImpl<$Res>;
  $Res call({List<Character> data, String searchText});
}

/// @nodoc
class __$$StateCharactersDataCopyWithImpl<$Res>
    extends _$StateBlocCharactersCopyWithImpl<$Res>
    implements _$$StateCharactersDataCopyWith<$Res> {
  __$$StateCharactersDataCopyWithImpl(
      _$StateCharactersData _value, $Res Function(_$StateCharactersData) _then)
      : super(_value, (v) => _then(v as _$StateCharactersData));

  @override
  _$StateCharactersData get _value => super._value as _$StateCharactersData;

  @override
  $Res call({
    Object? data = freezed,
    Object? searchText = freezed,
  }) {
    return _then(_$StateCharactersData(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      searchText: searchText == freezed
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StateCharactersData implements StateCharactersData {
  _$StateCharactersData(
      {required final List<Character> data, required this.searchText})
      : _data = data;

  final List<Character> _data;
  @override
  List<Character> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final String searchText;

  @override
  String toString() {
    return 'StateBlocCharacters.data(data: $data, searchText: $searchText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateCharactersData &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality()
                .equals(other.searchText, searchText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(searchText));

  @JsonKey(ignore: true)
  @override
  _$$StateCharactersDataCopyWith<_$StateCharactersData> get copyWith =>
      __$$StateCharactersDataCopyWithImpl<_$StateCharactersData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Character> data, String searchText) data,
    required TResult Function(String error) error,
  }) {
    return data(this.data, searchText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> data, String searchText)? data,
    TResult Function(String error)? error,
  }) {
    return data?.call(this.data, searchText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> data, String searchText)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data, searchText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StateCharactersInitial value) initial,
    required TResult Function(StateCharactersLoading value) loading,
    required TResult Function(StateCharactersData value) data,
    required TResult Function(StateCharactersError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StateCharactersInitial value)? initial,
    TResult Function(StateCharactersLoading value)? loading,
    TResult Function(StateCharactersData value)? data,
    TResult Function(StateCharactersError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateCharactersInitial value)? initial,
    TResult Function(StateCharactersLoading value)? loading,
    TResult Function(StateCharactersData value)? data,
    TResult Function(StateCharactersError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class StateCharactersData implements StateBlocCharacters {
  factory StateCharactersData(
      {required final List<Character> data,
      required final String searchText}) = _$StateCharactersData;

  List<Character> get data;
  String get searchText;
  @JsonKey(ignore: true)
  _$$StateCharactersDataCopyWith<_$StateCharactersData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StateCharactersErrorCopyWith<$Res> {
  factory _$$StateCharactersErrorCopyWith(_$StateCharactersError value,
          $Res Function(_$StateCharactersError) then) =
      __$$StateCharactersErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$StateCharactersErrorCopyWithImpl<$Res>
    extends _$StateBlocCharactersCopyWithImpl<$Res>
    implements _$$StateCharactersErrorCopyWith<$Res> {
  __$$StateCharactersErrorCopyWithImpl(_$StateCharactersError _value,
      $Res Function(_$StateCharactersError) _then)
      : super(_value, (v) => _then(v as _$StateCharactersError));

  @override
  _$StateCharactersError get _value => super._value as _$StateCharactersError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$StateCharactersError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StateCharactersError implements StateCharactersError {
  _$StateCharactersError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'StateBlocCharacters.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateCharactersError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$StateCharactersErrorCopyWith<_$StateCharactersError> get copyWith =>
      __$$StateCharactersErrorCopyWithImpl<_$StateCharactersError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Character> data, String searchText) data,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> data, String searchText)? data,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> data, String searchText)? data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StateCharactersInitial value) initial,
    required TResult Function(StateCharactersLoading value) loading,
    required TResult Function(StateCharactersData value) data,
    required TResult Function(StateCharactersError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StateCharactersInitial value)? initial,
    TResult Function(StateCharactersLoading value)? loading,
    TResult Function(StateCharactersData value)? data,
    TResult Function(StateCharactersError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StateCharactersInitial value)? initial,
    TResult Function(StateCharactersLoading value)? loading,
    TResult Function(StateCharactersData value)? data,
    TResult Function(StateCharactersError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StateCharactersError implements StateBlocCharacters {
  factory StateCharactersError(final String error) = _$StateCharactersError;

  String get error;
  @JsonKey(ignore: true)
  _$$StateCharactersErrorCopyWith<_$StateCharactersError> get copyWith =>
      throw _privateConstructorUsedError;
}
