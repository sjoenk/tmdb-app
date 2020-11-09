// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'movie_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MovieExceptionTearOff {
  const _$MovieExceptionTearOff();

// ignore: unused_element
  MovieNotFoundException notFound([String message = 'Not found']) {
    return MovieNotFoundException(
      message,
    );
  }

// ignore: unused_element
  MovieUnautharizedException unauthorized([String message = 'Unauthorized']) {
    return MovieUnautharizedException(
      message,
    );
  }

// ignore: unused_element
  MovieInvalidRequestException invalidRequest(
      [String message = 'Invalid request']) {
    return MovieInvalidRequestException(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MovieException = _$MovieExceptionTearOff();

/// @nodoc
mixin _$MovieException {
  String get message;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notFound(String message),
    @required Result unauthorized(String message),
    @required Result invalidRequest(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notFound(String message),
    Result unauthorized(String message),
    Result invalidRequest(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result notFound(MovieNotFoundException value),
    @required Result unauthorized(MovieUnautharizedException value),
    @required Result invalidRequest(MovieInvalidRequestException value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notFound(MovieNotFoundException value),
    Result unauthorized(MovieUnautharizedException value),
    Result invalidRequest(MovieInvalidRequestException value),
    @required Result orElse(),
  });

  $MovieExceptionCopyWith<MovieException> get copyWith;
}

/// @nodoc
abstract class $MovieExceptionCopyWith<$Res> {
  factory $MovieExceptionCopyWith(
          MovieException value, $Res Function(MovieException) then) =
      _$MovieExceptionCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$MovieExceptionCopyWithImpl<$Res>
    implements $MovieExceptionCopyWith<$Res> {
  _$MovieExceptionCopyWithImpl(this._value, this._then);

  final MovieException _value;
  // ignore: unused_field
  final $Res Function(MovieException) _then;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
abstract class $MovieNotFoundExceptionCopyWith<$Res>
    implements $MovieExceptionCopyWith<$Res> {
  factory $MovieNotFoundExceptionCopyWith(MovieNotFoundException value,
          $Res Function(MovieNotFoundException) then) =
      _$MovieNotFoundExceptionCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$MovieNotFoundExceptionCopyWithImpl<$Res>
    extends _$MovieExceptionCopyWithImpl<$Res>
    implements $MovieNotFoundExceptionCopyWith<$Res> {
  _$MovieNotFoundExceptionCopyWithImpl(MovieNotFoundException _value,
      $Res Function(MovieNotFoundException) _then)
      : super(_value, (v) => _then(v as MovieNotFoundException));

  @override
  MovieNotFoundException get _value => super._value as MovieNotFoundException;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(MovieNotFoundException(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$MovieNotFoundException implements MovieNotFoundException {
  _$MovieNotFoundException([this.message = 'Not found'])
      : assert(message != null);

  @JsonKey(defaultValue: 'Not found')
  @override
  final String message;

  @override
  String toString() {
    return 'MovieException.notFound(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MovieNotFoundException &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $MovieNotFoundExceptionCopyWith<MovieNotFoundException> get copyWith =>
      _$MovieNotFoundExceptionCopyWithImpl<MovieNotFoundException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notFound(String message),
    @required Result unauthorized(String message),
    @required Result invalidRequest(String message),
  }) {
    assert(notFound != null);
    assert(unauthorized != null);
    assert(invalidRequest != null);
    return notFound(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notFound(String message),
    Result unauthorized(String message),
    Result invalidRequest(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notFound != null) {
      return notFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result notFound(MovieNotFoundException value),
    @required Result unauthorized(MovieUnautharizedException value),
    @required Result invalidRequest(MovieInvalidRequestException value),
  }) {
    assert(notFound != null);
    assert(unauthorized != null);
    assert(invalidRequest != null);
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notFound(MovieNotFoundException value),
    Result unauthorized(MovieUnautharizedException value),
    Result invalidRequest(MovieInvalidRequestException value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class MovieNotFoundException implements MovieException {
  factory MovieNotFoundException([String message]) = _$MovieNotFoundException;

  @override
  String get message;
  @override
  $MovieNotFoundExceptionCopyWith<MovieNotFoundException> get copyWith;
}

/// @nodoc
abstract class $MovieUnautharizedExceptionCopyWith<$Res>
    implements $MovieExceptionCopyWith<$Res> {
  factory $MovieUnautharizedExceptionCopyWith(MovieUnautharizedException value,
          $Res Function(MovieUnautharizedException) then) =
      _$MovieUnautharizedExceptionCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$MovieUnautharizedExceptionCopyWithImpl<$Res>
    extends _$MovieExceptionCopyWithImpl<$Res>
    implements $MovieUnautharizedExceptionCopyWith<$Res> {
  _$MovieUnautharizedExceptionCopyWithImpl(MovieUnautharizedException _value,
      $Res Function(MovieUnautharizedException) _then)
      : super(_value, (v) => _then(v as MovieUnautharizedException));

  @override
  MovieUnautharizedException get _value =>
      super._value as MovieUnautharizedException;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(MovieUnautharizedException(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$MovieUnautharizedException implements MovieUnautharizedException {
  _$MovieUnautharizedException([this.message = 'Unauthorized'])
      : assert(message != null);

  @JsonKey(defaultValue: 'Unauthorized')
  @override
  final String message;

  @override
  String toString() {
    return 'MovieException.unauthorized(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MovieUnautharizedException &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $MovieUnautharizedExceptionCopyWith<MovieUnautharizedException>
      get copyWith =>
          _$MovieUnautharizedExceptionCopyWithImpl<MovieUnautharizedException>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notFound(String message),
    @required Result unauthorized(String message),
    @required Result invalidRequest(String message),
  }) {
    assert(notFound != null);
    assert(unauthorized != null);
    assert(invalidRequest != null);
    return unauthorized(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notFound(String message),
    Result unauthorized(String message),
    Result invalidRequest(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthorized != null) {
      return unauthorized(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result notFound(MovieNotFoundException value),
    @required Result unauthorized(MovieUnautharizedException value),
    @required Result invalidRequest(MovieInvalidRequestException value),
  }) {
    assert(notFound != null);
    assert(unauthorized != null);
    assert(invalidRequest != null);
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notFound(MovieNotFoundException value),
    Result unauthorized(MovieUnautharizedException value),
    Result invalidRequest(MovieInvalidRequestException value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class MovieUnautharizedException implements MovieException {
  factory MovieUnautharizedException([String message]) =
      _$MovieUnautharizedException;

  @override
  String get message;
  @override
  $MovieUnautharizedExceptionCopyWith<MovieUnautharizedException> get copyWith;
}

/// @nodoc
abstract class $MovieInvalidRequestExceptionCopyWith<$Res>
    implements $MovieExceptionCopyWith<$Res> {
  factory $MovieInvalidRequestExceptionCopyWith(
          MovieInvalidRequestException value,
          $Res Function(MovieInvalidRequestException) then) =
      _$MovieInvalidRequestExceptionCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$MovieInvalidRequestExceptionCopyWithImpl<$Res>
    extends _$MovieExceptionCopyWithImpl<$Res>
    implements $MovieInvalidRequestExceptionCopyWith<$Res> {
  _$MovieInvalidRequestExceptionCopyWithImpl(
      MovieInvalidRequestException _value,
      $Res Function(MovieInvalidRequestException) _then)
      : super(_value, (v) => _then(v as MovieInvalidRequestException));

  @override
  MovieInvalidRequestException get _value =>
      super._value as MovieInvalidRequestException;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(MovieInvalidRequestException(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$MovieInvalidRequestException implements MovieInvalidRequestException {
  _$MovieInvalidRequestException([this.message = 'Invalid request'])
      : assert(message != null);

  @JsonKey(defaultValue: 'Invalid request')
  @override
  final String message;

  @override
  String toString() {
    return 'MovieException.invalidRequest(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MovieInvalidRequestException &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $MovieInvalidRequestExceptionCopyWith<MovieInvalidRequestException>
      get copyWith => _$MovieInvalidRequestExceptionCopyWithImpl<
          MovieInvalidRequestException>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notFound(String message),
    @required Result unauthorized(String message),
    @required Result invalidRequest(String message),
  }) {
    assert(notFound != null);
    assert(unauthorized != null);
    assert(invalidRequest != null);
    return invalidRequest(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notFound(String message),
    Result unauthorized(String message),
    Result invalidRequest(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidRequest != null) {
      return invalidRequest(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result notFound(MovieNotFoundException value),
    @required Result unauthorized(MovieUnautharizedException value),
    @required Result invalidRequest(MovieInvalidRequestException value),
  }) {
    assert(notFound != null);
    assert(unauthorized != null);
    assert(invalidRequest != null);
    return invalidRequest(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notFound(MovieNotFoundException value),
    Result unauthorized(MovieUnautharizedException value),
    Result invalidRequest(MovieInvalidRequestException value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidRequest != null) {
      return invalidRequest(this);
    }
    return orElse();
  }
}

abstract class MovieInvalidRequestException implements MovieException {
  factory MovieInvalidRequestException([String message]) =
      _$MovieInvalidRequestException;

  @override
  String get message;
  @override
  $MovieInvalidRequestExceptionCopyWith<MovieInvalidRequestException>
      get copyWith;
}
