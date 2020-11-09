// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'movie_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MovieFailureTearOff {
  const _$MovieFailureTearOff();

// ignore: unused_element
  _Unexpected<T> unexpected<T>({@required String message}) {
    return _Unexpected<T>(
      message: message,
    );
  }

// ignore: unused_element
  _Unauthorized<T> unauthorized<T>({@required String message}) {
    return _Unauthorized<T>(
      message: message,
    );
  }

// ignore: unused_element
  _NotFound<T> notFound<T>({@required String message}) {
    return _NotFound<T>(
      message: message,
    );
  }

// ignore: unused_element
  _InvalidRequest<T> invalidRequest<T>({@required String message}) {
    return _InvalidRequest<T>(
      message: message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MovieFailure = _$MovieFailureTearOff();

/// @nodoc
mixin _$MovieFailure<T> {
  String get message;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(String message),
    @required Result unauthorized(String message),
    @required Result notFound(String message),
    @required Result invalidRequest(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(String message),
    Result unauthorized(String message),
    Result notFound(String message),
    Result invalidRequest(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpected(_Unexpected<T> value),
    @required Result unauthorized(_Unauthorized<T> value),
    @required Result notFound(_NotFound<T> value),
    @required Result invalidRequest(_InvalidRequest<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(_Unexpected<T> value),
    Result unauthorized(_Unauthorized<T> value),
    Result notFound(_NotFound<T> value),
    Result invalidRequest(_InvalidRequest<T> value),
    @required Result orElse(),
  });

  $MovieFailureCopyWith<T, MovieFailure<T>> get copyWith;
}

/// @nodoc
abstract class $MovieFailureCopyWith<T, $Res> {
  factory $MovieFailureCopyWith(
          MovieFailure<T> value, $Res Function(MovieFailure<T>) then) =
      _$MovieFailureCopyWithImpl<T, $Res>;
  $Res call({String message});
}

/// @nodoc
class _$MovieFailureCopyWithImpl<T, $Res>
    implements $MovieFailureCopyWith<T, $Res> {
  _$MovieFailureCopyWithImpl(this._value, this._then);

  final MovieFailure<T> _value;
  // ignore: unused_field
  final $Res Function(MovieFailure<T>) _then;

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
abstract class _$UnexpectedCopyWith<T, $Res>
    implements $MovieFailureCopyWith<T, $Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected<T> value, $Res Function(_Unexpected<T>) then) =
      __$UnexpectedCopyWithImpl<T, $Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$UnexpectedCopyWithImpl<T, $Res>
    extends _$MovieFailureCopyWithImpl<T, $Res>
    implements _$UnexpectedCopyWith<T, $Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected<T> _value, $Res Function(_Unexpected<T>) _then)
      : super(_value, (v) => _then(v as _Unexpected<T>));

  @override
  _Unexpected<T> get _value => super._value as _Unexpected<T>;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_Unexpected<T>(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_Unexpected<T> implements _Unexpected<T> {
  const _$_Unexpected({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'MovieFailure<$T>.unexpected(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Unexpected<T> &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$UnexpectedCopyWith<T, _Unexpected<T>> get copyWith =>
      __$UnexpectedCopyWithImpl<T, _Unexpected<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(String message),
    @required Result unauthorized(String message),
    @required Result notFound(String message),
    @required Result invalidRequest(String message),
  }) {
    assert(unexpected != null);
    assert(unauthorized != null);
    assert(notFound != null);
    assert(invalidRequest != null);
    return unexpected(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(String message),
    Result unauthorized(String message),
    Result notFound(String message),
    Result invalidRequest(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpected(_Unexpected<T> value),
    @required Result unauthorized(_Unauthorized<T> value),
    @required Result notFound(_NotFound<T> value),
    @required Result invalidRequest(_InvalidRequest<T> value),
  }) {
    assert(unexpected != null);
    assert(unauthorized != null);
    assert(notFound != null);
    assert(invalidRequest != null);
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(_Unexpected<T> value),
    Result unauthorized(_Unauthorized<T> value),
    Result notFound(_NotFound<T> value),
    Result invalidRequest(_InvalidRequest<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected<T> implements MovieFailure<T> {
  const factory _Unexpected({@required String message}) = _$_Unexpected<T>;

  @override
  String get message;
  @override
  _$UnexpectedCopyWith<T, _Unexpected<T>> get copyWith;
}

/// @nodoc
abstract class _$UnauthorizedCopyWith<T, $Res>
    implements $MovieFailureCopyWith<T, $Res> {
  factory _$UnauthorizedCopyWith(
          _Unauthorized<T> value, $Res Function(_Unauthorized<T>) then) =
      __$UnauthorizedCopyWithImpl<T, $Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$UnauthorizedCopyWithImpl<T, $Res>
    extends _$MovieFailureCopyWithImpl<T, $Res>
    implements _$UnauthorizedCopyWith<T, $Res> {
  __$UnauthorizedCopyWithImpl(
      _Unauthorized<T> _value, $Res Function(_Unauthorized<T>) _then)
      : super(_value, (v) => _then(v as _Unauthorized<T>));

  @override
  _Unauthorized<T> get _value => super._value as _Unauthorized<T>;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_Unauthorized<T>(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_Unauthorized<T> implements _Unauthorized<T> {
  const _$_Unauthorized({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'MovieFailure<$T>.unauthorized(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Unauthorized<T> &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$UnauthorizedCopyWith<T, _Unauthorized<T>> get copyWith =>
      __$UnauthorizedCopyWithImpl<T, _Unauthorized<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(String message),
    @required Result unauthorized(String message),
    @required Result notFound(String message),
    @required Result invalidRequest(String message),
  }) {
    assert(unexpected != null);
    assert(unauthorized != null);
    assert(notFound != null);
    assert(invalidRequest != null);
    return unauthorized(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(String message),
    Result unauthorized(String message),
    Result notFound(String message),
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
    @required Result unexpected(_Unexpected<T> value),
    @required Result unauthorized(_Unauthorized<T> value),
    @required Result notFound(_NotFound<T> value),
    @required Result invalidRequest(_InvalidRequest<T> value),
  }) {
    assert(unexpected != null);
    assert(unauthorized != null);
    assert(notFound != null);
    assert(invalidRequest != null);
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(_Unexpected<T> value),
    Result unauthorized(_Unauthorized<T> value),
    Result notFound(_NotFound<T> value),
    Result invalidRequest(_InvalidRequest<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthorized<T> implements MovieFailure<T> {
  const factory _Unauthorized({@required String message}) = _$_Unauthorized<T>;

  @override
  String get message;
  @override
  _$UnauthorizedCopyWith<T, _Unauthorized<T>> get copyWith;
}

/// @nodoc
abstract class _$NotFoundCopyWith<T, $Res>
    implements $MovieFailureCopyWith<T, $Res> {
  factory _$NotFoundCopyWith(
          _NotFound<T> value, $Res Function(_NotFound<T>) then) =
      __$NotFoundCopyWithImpl<T, $Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$NotFoundCopyWithImpl<T, $Res>
    extends _$MovieFailureCopyWithImpl<T, $Res>
    implements _$NotFoundCopyWith<T, $Res> {
  __$NotFoundCopyWithImpl(
      _NotFound<T> _value, $Res Function(_NotFound<T>) _then)
      : super(_value, (v) => _then(v as _NotFound<T>));

  @override
  _NotFound<T> get _value => super._value as _NotFound<T>;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_NotFound<T>(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_NotFound<T> implements _NotFound<T> {
  const _$_NotFound({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'MovieFailure<$T>.notFound(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotFound<T> &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$NotFoundCopyWith<T, _NotFound<T>> get copyWith =>
      __$NotFoundCopyWithImpl<T, _NotFound<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(String message),
    @required Result unauthorized(String message),
    @required Result notFound(String message),
    @required Result invalidRequest(String message),
  }) {
    assert(unexpected != null);
    assert(unauthorized != null);
    assert(notFound != null);
    assert(invalidRequest != null);
    return notFound(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(String message),
    Result unauthorized(String message),
    Result notFound(String message),
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
    @required Result unexpected(_Unexpected<T> value),
    @required Result unauthorized(_Unauthorized<T> value),
    @required Result notFound(_NotFound<T> value),
    @required Result invalidRequest(_InvalidRequest<T> value),
  }) {
    assert(unexpected != null);
    assert(unauthorized != null);
    assert(notFound != null);
    assert(invalidRequest != null);
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(_Unexpected<T> value),
    Result unauthorized(_Unauthorized<T> value),
    Result notFound(_NotFound<T> value),
    Result invalidRequest(_InvalidRequest<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _NotFound<T> implements MovieFailure<T> {
  const factory _NotFound({@required String message}) = _$_NotFound<T>;

  @override
  String get message;
  @override
  _$NotFoundCopyWith<T, _NotFound<T>> get copyWith;
}

/// @nodoc
abstract class _$InvalidRequestCopyWith<T, $Res>
    implements $MovieFailureCopyWith<T, $Res> {
  factory _$InvalidRequestCopyWith(
          _InvalidRequest<T> value, $Res Function(_InvalidRequest<T>) then) =
      __$InvalidRequestCopyWithImpl<T, $Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$InvalidRequestCopyWithImpl<T, $Res>
    extends _$MovieFailureCopyWithImpl<T, $Res>
    implements _$InvalidRequestCopyWith<T, $Res> {
  __$InvalidRequestCopyWithImpl(
      _InvalidRequest<T> _value, $Res Function(_InvalidRequest<T>) _then)
      : super(_value, (v) => _then(v as _InvalidRequest<T>));

  @override
  _InvalidRequest<T> get _value => super._value as _InvalidRequest<T>;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_InvalidRequest<T>(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_InvalidRequest<T> implements _InvalidRequest<T> {
  const _$_InvalidRequest({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'MovieFailure<$T>.invalidRequest(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidRequest<T> &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$InvalidRequestCopyWith<T, _InvalidRequest<T>> get copyWith =>
      __$InvalidRequestCopyWithImpl<T, _InvalidRequest<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(String message),
    @required Result unauthorized(String message),
    @required Result notFound(String message),
    @required Result invalidRequest(String message),
  }) {
    assert(unexpected != null);
    assert(unauthorized != null);
    assert(notFound != null);
    assert(invalidRequest != null);
    return invalidRequest(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(String message),
    Result unauthorized(String message),
    Result notFound(String message),
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
    @required Result unexpected(_Unexpected<T> value),
    @required Result unauthorized(_Unauthorized<T> value),
    @required Result notFound(_NotFound<T> value),
    @required Result invalidRequest(_InvalidRequest<T> value),
  }) {
    assert(unexpected != null);
    assert(unauthorized != null);
    assert(notFound != null);
    assert(invalidRequest != null);
    return invalidRequest(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(_Unexpected<T> value),
    Result unauthorized(_Unauthorized<T> value),
    Result notFound(_NotFound<T> value),
    Result invalidRequest(_InvalidRequest<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidRequest != null) {
      return invalidRequest(this);
    }
    return orElse();
  }
}

abstract class _InvalidRequest<T> implements MovieFailure<T> {
  const factory _InvalidRequest({@required String message}) =
      _$_InvalidRequest<T>;

  @override
  String get message;
  @override
  _$InvalidRequestCopyWith<T, _InvalidRequest<T>> get copyWith;
}
