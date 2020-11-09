// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'movies_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MoviesListEventTearOff {
  const _$MoviesListEventTearOff();

// ignore: unused_element
  _SearchMovies searchMovies({@required String searchQuery, int page = 0}) {
    return _SearchMovies(
      searchQuery: searchQuery,
      page: page,
    );
  }

// ignore: unused_element
  _PopularMovies popularMovies({int page = 0}) {
    return _PopularMovies(
      page: page,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MoviesListEvent = _$MoviesListEventTearOff();

/// @nodoc
mixin _$MoviesListEvent {
  int get page;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searchMovies(String searchQuery, int page),
    @required Result popularMovies(int page),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searchMovies(String searchQuery, int page),
    Result popularMovies(int page),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searchMovies(_SearchMovies value),
    @required Result popularMovies(_PopularMovies value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searchMovies(_SearchMovies value),
    Result popularMovies(_PopularMovies value),
    @required Result orElse(),
  });

  $MoviesListEventCopyWith<MoviesListEvent> get copyWith;
}

/// @nodoc
abstract class $MoviesListEventCopyWith<$Res> {
  factory $MoviesListEventCopyWith(
          MoviesListEvent value, $Res Function(MoviesListEvent) then) =
      _$MoviesListEventCopyWithImpl<$Res>;
  $Res call({int page});
}

/// @nodoc
class _$MoviesListEventCopyWithImpl<$Res>
    implements $MoviesListEventCopyWith<$Res> {
  _$MoviesListEventCopyWithImpl(this._value, this._then);

  final MoviesListEvent _value;
  // ignore: unused_field
  final $Res Function(MoviesListEvent) _then;

  @override
  $Res call({
    Object page = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed ? _value.page : page as int,
    ));
  }
}

/// @nodoc
abstract class _$SearchMoviesCopyWith<$Res>
    implements $MoviesListEventCopyWith<$Res> {
  factory _$SearchMoviesCopyWith(
          _SearchMovies value, $Res Function(_SearchMovies) then) =
      __$SearchMoviesCopyWithImpl<$Res>;
  @override
  $Res call({String searchQuery, int page});
}

/// @nodoc
class __$SearchMoviesCopyWithImpl<$Res>
    extends _$MoviesListEventCopyWithImpl<$Res>
    implements _$SearchMoviesCopyWith<$Res> {
  __$SearchMoviesCopyWithImpl(
      _SearchMovies _value, $Res Function(_SearchMovies) _then)
      : super(_value, (v) => _then(v as _SearchMovies));

  @override
  _SearchMovies get _value => super._value as _SearchMovies;

  @override
  $Res call({
    Object searchQuery = freezed,
    Object page = freezed,
  }) {
    return _then(_SearchMovies(
      searchQuery:
          searchQuery == freezed ? _value.searchQuery : searchQuery as String,
      page: page == freezed ? _value.page : page as int,
    ));
  }
}

/// @nodoc
class _$_SearchMovies implements _SearchMovies {
  const _$_SearchMovies({@required this.searchQuery, this.page = 0})
      : assert(searchQuery != null),
        assert(page != null);

  @override
  final String searchQuery;
  @JsonKey(defaultValue: 0)
  @override
  final int page;

  @override
  String toString() {
    return 'MoviesListEvent.searchMovies(searchQuery: $searchQuery, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchMovies &&
            (identical(other.searchQuery, searchQuery) ||
                const DeepCollectionEquality()
                    .equals(other.searchQuery, searchQuery)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(searchQuery) ^
      const DeepCollectionEquality().hash(page);

  @override
  _$SearchMoviesCopyWith<_SearchMovies> get copyWith =>
      __$SearchMoviesCopyWithImpl<_SearchMovies>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searchMovies(String searchQuery, int page),
    @required Result popularMovies(int page),
  }) {
    assert(searchMovies != null);
    assert(popularMovies != null);
    return searchMovies(searchQuery, page);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searchMovies(String searchQuery, int page),
    Result popularMovies(int page),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchMovies != null) {
      return searchMovies(searchQuery, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searchMovies(_SearchMovies value),
    @required Result popularMovies(_PopularMovies value),
  }) {
    assert(searchMovies != null);
    assert(popularMovies != null);
    return searchMovies(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searchMovies(_SearchMovies value),
    Result popularMovies(_PopularMovies value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchMovies != null) {
      return searchMovies(this);
    }
    return orElse();
  }
}

abstract class _SearchMovies implements MoviesListEvent {
  const factory _SearchMovies({@required String searchQuery, int page}) =
      _$_SearchMovies;

  String get searchQuery;
  @override
  int get page;
  @override
  _$SearchMoviesCopyWith<_SearchMovies> get copyWith;
}

/// @nodoc
abstract class _$PopularMoviesCopyWith<$Res>
    implements $MoviesListEventCopyWith<$Res> {
  factory _$PopularMoviesCopyWith(
          _PopularMovies value, $Res Function(_PopularMovies) then) =
      __$PopularMoviesCopyWithImpl<$Res>;
  @override
  $Res call({int page});
}

/// @nodoc
class __$PopularMoviesCopyWithImpl<$Res>
    extends _$MoviesListEventCopyWithImpl<$Res>
    implements _$PopularMoviesCopyWith<$Res> {
  __$PopularMoviesCopyWithImpl(
      _PopularMovies _value, $Res Function(_PopularMovies) _then)
      : super(_value, (v) => _then(v as _PopularMovies));

  @override
  _PopularMovies get _value => super._value as _PopularMovies;

  @override
  $Res call({
    Object page = freezed,
  }) {
    return _then(_PopularMovies(
      page: page == freezed ? _value.page : page as int,
    ));
  }
}

/// @nodoc
class _$_PopularMovies implements _PopularMovies {
  const _$_PopularMovies({this.page = 0}) : assert(page != null);

  @JsonKey(defaultValue: 0)
  @override
  final int page;

  @override
  String toString() {
    return 'MoviesListEvent.popularMovies(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PopularMovies &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(page);

  @override
  _$PopularMoviesCopyWith<_PopularMovies> get copyWith =>
      __$PopularMoviesCopyWithImpl<_PopularMovies>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searchMovies(String searchQuery, int page),
    @required Result popularMovies(int page),
  }) {
    assert(searchMovies != null);
    assert(popularMovies != null);
    return popularMovies(page);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searchMovies(String searchQuery, int page),
    Result popularMovies(int page),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (popularMovies != null) {
      return popularMovies(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searchMovies(_SearchMovies value),
    @required Result popularMovies(_PopularMovies value),
  }) {
    assert(searchMovies != null);
    assert(popularMovies != null);
    return popularMovies(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searchMovies(_SearchMovies value),
    Result popularMovies(_PopularMovies value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (popularMovies != null) {
      return popularMovies(this);
    }
    return orElse();
  }
}

abstract class _PopularMovies implements MoviesListEvent {
  const factory _PopularMovies({int page}) = _$_PopularMovies;

  @override
  int get page;
  @override
  _$PopularMoviesCopyWith<_PopularMovies> get copyWith;
}

/// @nodoc
class _$MoviesListStateTearOff {
  const _$MoviesListStateTearOff();

// ignore: unused_element
  _MoviesListState call(
      {MovieList movieList = const MovieList(),
      bool isLoading = false,
      @nullable MovieFailure<dynamic> failure}) {
    return _MoviesListState(
      movieList: movieList,
      isLoading: isLoading,
      failure: failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MoviesListState = _$MoviesListStateTearOff();

/// @nodoc
mixin _$MoviesListState {
  MovieList get movieList;
  bool get isLoading;
  @nullable
  MovieFailure<dynamic> get failure;

  $MoviesListStateCopyWith<MoviesListState> get copyWith;
}

/// @nodoc
abstract class $MoviesListStateCopyWith<$Res> {
  factory $MoviesListStateCopyWith(
          MoviesListState value, $Res Function(MoviesListState) then) =
      _$MoviesListStateCopyWithImpl<$Res>;
  $Res call(
      {MovieList movieList,
      bool isLoading,
      @nullable MovieFailure<dynamic> failure});

  $MovieListCopyWith<$Res> get movieList;
  $MovieFailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class _$MoviesListStateCopyWithImpl<$Res>
    implements $MoviesListStateCopyWith<$Res> {
  _$MoviesListStateCopyWithImpl(this._value, this._then);

  final MoviesListState _value;
  // ignore: unused_field
  final $Res Function(MoviesListState) _then;

  @override
  $Res call({
    Object movieList = freezed,
    Object isLoading = freezed,
    Object failure = freezed,
  }) {
    return _then(_value.copyWith(
      movieList:
          movieList == freezed ? _value.movieList : movieList as MovieList,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      failure: failure == freezed
          ? _value.failure
          : failure as MovieFailure<dynamic>,
    ));
  }

  @override
  $MovieListCopyWith<$Res> get movieList {
    if (_value.movieList == null) {
      return null;
    }
    return $MovieListCopyWith<$Res>(_value.movieList, (value) {
      return _then(_value.copyWith(movieList: value));
    });
  }

  @override
  $MovieFailureCopyWith<dynamic, $Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $MovieFailureCopyWith<dynamic, $Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
abstract class _$MoviesListStateCopyWith<$Res>
    implements $MoviesListStateCopyWith<$Res> {
  factory _$MoviesListStateCopyWith(
          _MoviesListState value, $Res Function(_MoviesListState) then) =
      __$MoviesListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {MovieList movieList,
      bool isLoading,
      @nullable MovieFailure<dynamic> failure});

  @override
  $MovieListCopyWith<$Res> get movieList;
  @override
  $MovieFailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$MoviesListStateCopyWithImpl<$Res>
    extends _$MoviesListStateCopyWithImpl<$Res>
    implements _$MoviesListStateCopyWith<$Res> {
  __$MoviesListStateCopyWithImpl(
      _MoviesListState _value, $Res Function(_MoviesListState) _then)
      : super(_value, (v) => _then(v as _MoviesListState));

  @override
  _MoviesListState get _value => super._value as _MoviesListState;

  @override
  $Res call({
    Object movieList = freezed,
    Object isLoading = freezed,
    Object failure = freezed,
  }) {
    return _then(_MoviesListState(
      movieList:
          movieList == freezed ? _value.movieList : movieList as MovieList,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      failure: failure == freezed
          ? _value.failure
          : failure as MovieFailure<dynamic>,
    ));
  }
}

/// @nodoc
class _$_MoviesListState implements _MoviesListState {
  const _$_MoviesListState(
      {this.movieList = const MovieList(),
      this.isLoading = false,
      @nullable this.failure})
      : assert(movieList != null),
        assert(isLoading != null);

  @JsonKey(defaultValue: const MovieList())
  @override
  final MovieList movieList;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @override
  @nullable
  final MovieFailure<dynamic> failure;

  @override
  String toString() {
    return 'MoviesListState(movieList: $movieList, isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MoviesListState &&
            (identical(other.movieList, movieList) ||
                const DeepCollectionEquality()
                    .equals(other.movieList, movieList)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(movieList) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(failure);

  @override
  _$MoviesListStateCopyWith<_MoviesListState> get copyWith =>
      __$MoviesListStateCopyWithImpl<_MoviesListState>(this, _$identity);
}

abstract class _MoviesListState implements MoviesListState {
  const factory _MoviesListState(
      {MovieList movieList,
      bool isLoading,
      @nullable MovieFailure<dynamic> failure}) = _$_MoviesListState;

  @override
  MovieList get movieList;
  @override
  bool get isLoading;
  @override
  @nullable
  MovieFailure<dynamic> get failure;
  @override
  _$MoviesListStateCopyWith<_MoviesListState> get copyWith;
}
