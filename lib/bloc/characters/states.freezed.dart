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
mixin _$CharactersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Character> data, String searchText,
            bool isLoading, bool isEndOfData, String? errorMessage)
        data,
    required TResult Function(String error, String searchText) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> data, String searchText, bool isLoading,
            bool isEndOfData, String? errorMessage)?
        data,
    TResult Function(String error, String searchText)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> data, String searchText, bool isLoading,
            bool isEndOfData, String? errorMessage)?
        data,
    TResult Function(String error, String searchText)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharactersStateInitial value) initial,
    required TResult Function(CharactersStateLoading value) loading,
    required TResult Function(CharactersStateData value) data,
    required TResult Function(CharactersStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CharactersStateInitial value)? initial,
    TResult Function(CharactersStateLoading value)? loading,
    TResult Function(CharactersStateData value)? data,
    TResult Function(CharactersStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersStateInitial value)? initial,
    TResult Function(CharactersStateLoading value)? loading,
    TResult Function(CharactersStateData value)? data,
    TResult Function(CharactersStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersStateCopyWith<$Res> {
  factory $CharactersStateCopyWith(
          CharactersState value, $Res Function(CharactersState) then) =
      _$CharactersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CharactersStateCopyWithImpl<$Res>
    implements $CharactersStateCopyWith<$Res> {
  _$CharactersStateCopyWithImpl(this._value, this._then);

  final CharactersState _value;
  // ignore: unused_field
  final $Res Function(CharactersState) _then;
}

/// @nodoc
abstract class _$$CharactersStateInitialCopyWith<$Res> {
  factory _$$CharactersStateInitialCopyWith(_$CharactersStateInitial value,
          $Res Function(_$CharactersStateInitial) then) =
      __$$CharactersStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharactersStateInitialCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res>
    implements _$$CharactersStateInitialCopyWith<$Res> {
  __$$CharactersStateInitialCopyWithImpl(_$CharactersStateInitial _value,
      $Res Function(_$CharactersStateInitial) _then)
      : super(_value, (v) => _then(v as _$CharactersStateInitial));

  @override
  _$CharactersStateInitial get _value =>
      super._value as _$CharactersStateInitial;
}

/// @nodoc

class _$CharactersStateInitial implements CharactersStateInitial {
  _$CharactersStateInitial();

  @override
  String toString() {
    return 'CharactersState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CharactersStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Character> data, String searchText,
            bool isLoading, bool isEndOfData, String? errorMessage)
        data,
    required TResult Function(String error, String searchText) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> data, String searchText, bool isLoading,
            bool isEndOfData, String? errorMessage)?
        data,
    TResult Function(String error, String searchText)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> data, String searchText, bool isLoading,
            bool isEndOfData, String? errorMessage)?
        data,
    TResult Function(String error, String searchText)? error,
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
    required TResult Function(CharactersStateInitial value) initial,
    required TResult Function(CharactersStateLoading value) loading,
    required TResult Function(CharactersStateData value) data,
    required TResult Function(CharactersStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CharactersStateInitial value)? initial,
    TResult Function(CharactersStateLoading value)? loading,
    TResult Function(CharactersStateData value)? data,
    TResult Function(CharactersStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersStateInitial value)? initial,
    TResult Function(CharactersStateLoading value)? loading,
    TResult Function(CharactersStateData value)? data,
    TResult Function(CharactersStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CharactersStateInitial implements CharactersState {
  factory CharactersStateInitial() = _$CharactersStateInitial;
}

/// @nodoc
abstract class _$$CharactersStateLoadingCopyWith<$Res> {
  factory _$$CharactersStateLoadingCopyWith(_$CharactersStateLoading value,
          $Res Function(_$CharactersStateLoading) then) =
      __$$CharactersStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharactersStateLoadingCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res>
    implements _$$CharactersStateLoadingCopyWith<$Res> {
  __$$CharactersStateLoadingCopyWithImpl(_$CharactersStateLoading _value,
      $Res Function(_$CharactersStateLoading) _then)
      : super(_value, (v) => _then(v as _$CharactersStateLoading));

  @override
  _$CharactersStateLoading get _value =>
      super._value as _$CharactersStateLoading;
}

/// @nodoc

class _$CharactersStateLoading implements CharactersStateLoading {
  _$CharactersStateLoading();

  @override
  String toString() {
    return 'CharactersState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CharactersStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Character> data, String searchText,
            bool isLoading, bool isEndOfData, String? errorMessage)
        data,
    required TResult Function(String error, String searchText) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> data, String searchText, bool isLoading,
            bool isEndOfData, String? errorMessage)?
        data,
    TResult Function(String error, String searchText)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> data, String searchText, bool isLoading,
            bool isEndOfData, String? errorMessage)?
        data,
    TResult Function(String error, String searchText)? error,
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
    required TResult Function(CharactersStateInitial value) initial,
    required TResult Function(CharactersStateLoading value) loading,
    required TResult Function(CharactersStateData value) data,
    required TResult Function(CharactersStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CharactersStateInitial value)? initial,
    TResult Function(CharactersStateLoading value)? loading,
    TResult Function(CharactersStateData value)? data,
    TResult Function(CharactersStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersStateInitial value)? initial,
    TResult Function(CharactersStateLoading value)? loading,
    TResult Function(CharactersStateData value)? data,
    TResult Function(CharactersStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CharactersStateLoading implements CharactersState {
  factory CharactersStateLoading() = _$CharactersStateLoading;
}

/// @nodoc
abstract class _$$CharactersStateDataCopyWith<$Res> {
  factory _$$CharactersStateDataCopyWith(_$CharactersStateData value,
          $Res Function(_$CharactersStateData) then) =
      __$$CharactersStateDataCopyWithImpl<$Res>;
  $Res call(
      {List<Character> data,
      String searchText,
      bool isLoading,
      bool isEndOfData,
      String? errorMessage});
}

/// @nodoc
class __$$CharactersStateDataCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res>
    implements _$$CharactersStateDataCopyWith<$Res> {
  __$$CharactersStateDataCopyWithImpl(
      _$CharactersStateData _value, $Res Function(_$CharactersStateData) _then)
      : super(_value, (v) => _then(v as _$CharactersStateData));

  @override
  _$CharactersStateData get _value => super._value as _$CharactersStateData;

  @override
  $Res call({
    Object? data = freezed,
    Object? searchText = freezed,
    Object? isLoading = freezed,
    Object? isEndOfData = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$CharactersStateData(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      searchText: searchText == freezed
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isEndOfData: isEndOfData == freezed
          ? _value.isEndOfData
          : isEndOfData // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CharactersStateData implements CharactersStateData {
  _$CharactersStateData(
      {required final List<Character> data,
      required this.searchText,
      this.isLoading = false,
      this.isEndOfData = false,
      this.errorMessage})
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
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isEndOfData;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'CharactersState.data(data: $data, searchText: $searchText, isLoading: $isLoading, isEndOfData: $isEndOfData, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersStateData &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality()
                .equals(other.searchText, searchText) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isEndOfData, isEndOfData) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(searchText),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isEndOfData),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$CharactersStateDataCopyWith<_$CharactersStateData> get copyWith =>
      __$$CharactersStateDataCopyWithImpl<_$CharactersStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Character> data, String searchText,
            bool isLoading, bool isEndOfData, String? errorMessage)
        data,
    required TResult Function(String error, String searchText) error,
  }) {
    return data(this.data, searchText, isLoading, isEndOfData, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> data, String searchText, bool isLoading,
            bool isEndOfData, String? errorMessage)?
        data,
    TResult Function(String error, String searchText)? error,
  }) {
    return data?.call(
        this.data, searchText, isLoading, isEndOfData, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> data, String searchText, bool isLoading,
            bool isEndOfData, String? errorMessage)?
        data,
    TResult Function(String error, String searchText)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data, searchText, isLoading, isEndOfData, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharactersStateInitial value) initial,
    required TResult Function(CharactersStateLoading value) loading,
    required TResult Function(CharactersStateData value) data,
    required TResult Function(CharactersStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CharactersStateInitial value)? initial,
    TResult Function(CharactersStateLoading value)? loading,
    TResult Function(CharactersStateData value)? data,
    TResult Function(CharactersStateError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersStateInitial value)? initial,
    TResult Function(CharactersStateLoading value)? loading,
    TResult Function(CharactersStateData value)? data,
    TResult Function(CharactersStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class CharactersStateData implements CharactersState {
  factory CharactersStateData(
      {required final List<Character> data,
      required final String searchText,
      final bool isLoading,
      final bool isEndOfData,
      final String? errorMessage}) = _$CharactersStateData;

  List<Character> get data;
  String get searchText;
  bool get isLoading;
  bool get isEndOfData;
  String? get errorMessage;
  @JsonKey(ignore: true)
  _$$CharactersStateDataCopyWith<_$CharactersStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharactersStateErrorCopyWith<$Res> {
  factory _$$CharactersStateErrorCopyWith(_$CharactersStateError value,
          $Res Function(_$CharactersStateError) then) =
      __$$CharactersStateErrorCopyWithImpl<$Res>;
  $Res call({String error, String searchText});
}

/// @nodoc
class __$$CharactersStateErrorCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res>
    implements _$$CharactersStateErrorCopyWith<$Res> {
  __$$CharactersStateErrorCopyWithImpl(_$CharactersStateError _value,
      $Res Function(_$CharactersStateError) _then)
      : super(_value, (v) => _then(v as _$CharactersStateError));

  @override
  _$CharactersStateError get _value => super._value as _$CharactersStateError;

  @override
  $Res call({
    Object? error = freezed,
    Object? searchText = freezed,
  }) {
    return _then(_$CharactersStateError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      searchText: searchText == freezed
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CharactersStateError implements CharactersStateError {
  _$CharactersStateError({required this.error, required this.searchText});

  @override
  final String error;
  @override
  final String searchText;

  @override
  String toString() {
    return 'CharactersState.error(error: $error, searchText: $searchText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersStateError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.searchText, searchText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(searchText));

  @JsonKey(ignore: true)
  @override
  _$$CharactersStateErrorCopyWith<_$CharactersStateError> get copyWith =>
      __$$CharactersStateErrorCopyWithImpl<_$CharactersStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Character> data, String searchText,
            bool isLoading, bool isEndOfData, String? errorMessage)
        data,
    required TResult Function(String error, String searchText) error,
  }) {
    return error(this.error, searchText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> data, String searchText, bool isLoading,
            bool isEndOfData, String? errorMessage)?
        data,
    TResult Function(String error, String searchText)? error,
  }) {
    return error?.call(this.error, searchText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> data, String searchText, bool isLoading,
            bool isEndOfData, String? errorMessage)?
        data,
    TResult Function(String error, String searchText)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, searchText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharactersStateInitial value) initial,
    required TResult Function(CharactersStateLoading value) loading,
    required TResult Function(CharactersStateData value) data,
    required TResult Function(CharactersStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CharactersStateInitial value)? initial,
    TResult Function(CharactersStateLoading value)? loading,
    TResult Function(CharactersStateData value)? data,
    TResult Function(CharactersStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersStateInitial value)? initial,
    TResult Function(CharactersStateLoading value)? loading,
    TResult Function(CharactersStateData value)? data,
    TResult Function(CharactersStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CharactersStateError implements CharactersState {
  factory CharactersStateError(
      {required final String error,
      required final String searchText}) = _$CharactersStateError;

  String get error;
  String get searchText;
  @JsonKey(ignore: true)
  _$$CharactersStateErrorCopyWith<_$CharactersStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
