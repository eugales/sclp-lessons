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
mixin _$LocationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Location> data, String searchText,
            bool isLoading, String? errorMessage)
        data,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Location> data, String searchText, bool isLoading,
            String? errorMessage)?
        data,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Location> data, String searchText, bool isLoading,
            String? errorMessage)?
        data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationsStateInitial value) initial,
    required TResult Function(LocationsStateLoading value) loading,
    required TResult Function(LocationsStateData value) data,
    required TResult Function(LocationsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocationsStateInitial value)? initial,
    TResult Function(LocationsStateLoading value)? loading,
    TResult Function(LocationsStateData value)? data,
    TResult Function(LocationsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationsStateInitial value)? initial,
    TResult Function(LocationsStateLoading value)? loading,
    TResult Function(LocationsStateData value)? data,
    TResult Function(LocationsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsStateCopyWith<$Res> {
  factory $LocationsStateCopyWith(
          LocationsState value, $Res Function(LocationsState) then) =
      _$LocationsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationsStateCopyWithImpl<$Res>
    implements $LocationsStateCopyWith<$Res> {
  _$LocationsStateCopyWithImpl(this._value, this._then);

  final LocationsState _value;
  // ignore: unused_field
  final $Res Function(LocationsState) _then;
}

/// @nodoc
abstract class _$$LocationsStateInitialCopyWith<$Res> {
  factory _$$LocationsStateInitialCopyWith(_$LocationsStateInitial value,
          $Res Function(_$LocationsStateInitial) then) =
      __$$LocationsStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationsStateInitialCopyWithImpl<$Res>
    extends _$LocationsStateCopyWithImpl<$Res>
    implements _$$LocationsStateInitialCopyWith<$Res> {
  __$$LocationsStateInitialCopyWithImpl(_$LocationsStateInitial _value,
      $Res Function(_$LocationsStateInitial) _then)
      : super(_value, (v) => _then(v as _$LocationsStateInitial));

  @override
  _$LocationsStateInitial get _value => super._value as _$LocationsStateInitial;
}

/// @nodoc

class _$LocationsStateInitial implements LocationsStateInitial {
  _$LocationsStateInitial();

  @override
  String toString() {
    return 'LocationsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocationsStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Location> data, String searchText,
            bool isLoading, String? errorMessage)
        data,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Location> data, String searchText, bool isLoading,
            String? errorMessage)?
        data,
    TResult Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Location> data, String searchText, bool isLoading,
            String? errorMessage)?
        data,
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
    required TResult Function(LocationsStateInitial value) initial,
    required TResult Function(LocationsStateLoading value) loading,
    required TResult Function(LocationsStateData value) data,
    required TResult Function(LocationsStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocationsStateInitial value)? initial,
    TResult Function(LocationsStateLoading value)? loading,
    TResult Function(LocationsStateData value)? data,
    TResult Function(LocationsStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationsStateInitial value)? initial,
    TResult Function(LocationsStateLoading value)? loading,
    TResult Function(LocationsStateData value)? data,
    TResult Function(LocationsStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LocationsStateInitial implements LocationsState {
  factory LocationsStateInitial() = _$LocationsStateInitial;
}

/// @nodoc
abstract class _$$LocationsStateLoadingCopyWith<$Res> {
  factory _$$LocationsStateLoadingCopyWith(_$LocationsStateLoading value,
          $Res Function(_$LocationsStateLoading) then) =
      __$$LocationsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationsStateLoadingCopyWithImpl<$Res>
    extends _$LocationsStateCopyWithImpl<$Res>
    implements _$$LocationsStateLoadingCopyWith<$Res> {
  __$$LocationsStateLoadingCopyWithImpl(_$LocationsStateLoading _value,
      $Res Function(_$LocationsStateLoading) _then)
      : super(_value, (v) => _then(v as _$LocationsStateLoading));

  @override
  _$LocationsStateLoading get _value => super._value as _$LocationsStateLoading;
}

/// @nodoc

class _$LocationsStateLoading implements LocationsStateLoading {
  _$LocationsStateLoading();

  @override
  String toString() {
    return 'LocationsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocationsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Location> data, String searchText,
            bool isLoading, String? errorMessage)
        data,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Location> data, String searchText, bool isLoading,
            String? errorMessage)?
        data,
    TResult Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Location> data, String searchText, bool isLoading,
            String? errorMessage)?
        data,
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
    required TResult Function(LocationsStateInitial value) initial,
    required TResult Function(LocationsStateLoading value) loading,
    required TResult Function(LocationsStateData value) data,
    required TResult Function(LocationsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocationsStateInitial value)? initial,
    TResult Function(LocationsStateLoading value)? loading,
    TResult Function(LocationsStateData value)? data,
    TResult Function(LocationsStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationsStateInitial value)? initial,
    TResult Function(LocationsStateLoading value)? loading,
    TResult Function(LocationsStateData value)? data,
    TResult Function(LocationsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LocationsStateLoading implements LocationsState {
  factory LocationsStateLoading() = _$LocationsStateLoading;
}

/// @nodoc
abstract class _$$LocationsStateDataCopyWith<$Res> {
  factory _$$LocationsStateDataCopyWith(_$LocationsStateData value,
          $Res Function(_$LocationsStateData) then) =
      __$$LocationsStateDataCopyWithImpl<$Res>;
  $Res call(
      {List<Location> data,
      String searchText,
      bool isLoading,
      String? errorMessage});
}

/// @nodoc
class __$$LocationsStateDataCopyWithImpl<$Res>
    extends _$LocationsStateCopyWithImpl<$Res>
    implements _$$LocationsStateDataCopyWith<$Res> {
  __$$LocationsStateDataCopyWithImpl(
      _$LocationsStateData _value, $Res Function(_$LocationsStateData) _then)
      : super(_value, (v) => _then(v as _$LocationsStateData));

  @override
  _$LocationsStateData get _value => super._value as _$LocationsStateData;

  @override
  $Res call({
    Object? data = freezed,
    Object? searchText = freezed,
    Object? isLoading = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$LocationsStateData(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Location>,
      searchText: searchText == freezed
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LocationsStateData implements LocationsStateData {
  _$LocationsStateData(
      {required final List<Location> data,
      required this.searchText,
      this.isLoading = false,
      this.errorMessage})
      : _data = data;

  final List<Location> _data;
  @override
  List<Location> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final String searchText;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'LocationsState.data(data: $data, searchText: $searchText, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationsStateData &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality()
                .equals(other.searchText, searchText) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(searchText),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$LocationsStateDataCopyWith<_$LocationsStateData> get copyWith =>
      __$$LocationsStateDataCopyWithImpl<_$LocationsStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Location> data, String searchText,
            bool isLoading, String? errorMessage)
        data,
    required TResult Function(String error) error,
  }) {
    return data(this.data, searchText, isLoading, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Location> data, String searchText, bool isLoading,
            String? errorMessage)?
        data,
    TResult Function(String error)? error,
  }) {
    return data?.call(this.data, searchText, isLoading, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Location> data, String searchText, bool isLoading,
            String? errorMessage)?
        data,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data, searchText, isLoading, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationsStateInitial value) initial,
    required TResult Function(LocationsStateLoading value) loading,
    required TResult Function(LocationsStateData value) data,
    required TResult Function(LocationsStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocationsStateInitial value)? initial,
    TResult Function(LocationsStateLoading value)? loading,
    TResult Function(LocationsStateData value)? data,
    TResult Function(LocationsStateError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationsStateInitial value)? initial,
    TResult Function(LocationsStateLoading value)? loading,
    TResult Function(LocationsStateData value)? data,
    TResult Function(LocationsStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class LocationsStateData implements LocationsState {
  factory LocationsStateData(
      {required final List<Location> data,
      required final String searchText,
      final bool isLoading,
      final String? errorMessage}) = _$LocationsStateData;

  List<Location> get data;
  String get searchText;
  bool get isLoading;
  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$LocationsStateDataCopyWith<_$LocationsStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationsStateErrorCopyWith<$Res> {
  factory _$$LocationsStateErrorCopyWith(_$LocationsStateError value,
          $Res Function(_$LocationsStateError) then) =
      __$$LocationsStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$LocationsStateErrorCopyWithImpl<$Res>
    extends _$LocationsStateCopyWithImpl<$Res>
    implements _$$LocationsStateErrorCopyWith<$Res> {
  __$$LocationsStateErrorCopyWithImpl(
      _$LocationsStateError _value, $Res Function(_$LocationsStateError) _then)
      : super(_value, (v) => _then(v as _$LocationsStateError));

  @override
  _$LocationsStateError get _value => super._value as _$LocationsStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$LocationsStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocationsStateError implements LocationsStateError {
  _$LocationsStateError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'LocationsState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationsStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$LocationsStateErrorCopyWith<_$LocationsStateError> get copyWith =>
      __$$LocationsStateErrorCopyWithImpl<_$LocationsStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Location> data, String searchText,
            bool isLoading, String? errorMessage)
        data,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Location> data, String searchText, bool isLoading,
            String? errorMessage)?
        data,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Location> data, String searchText, bool isLoading,
            String? errorMessage)?
        data,
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
    required TResult Function(LocationsStateInitial value) initial,
    required TResult Function(LocationsStateLoading value) loading,
    required TResult Function(LocationsStateData value) data,
    required TResult Function(LocationsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocationsStateInitial value)? initial,
    TResult Function(LocationsStateLoading value)? loading,
    TResult Function(LocationsStateData value)? data,
    TResult Function(LocationsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationsStateInitial value)? initial,
    TResult Function(LocationsStateLoading value)? loading,
    TResult Function(LocationsStateData value)? data,
    TResult Function(LocationsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LocationsStateError implements LocationsState {
  factory LocationsStateError(final String error) = _$LocationsStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$LocationsStateErrorCopyWith<_$LocationsStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
