// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'movie_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MovieListTearOff {
  const _$MovieListTearOff();

// ignore: unused_element
  _MovieList call(
      {int page = 0,
      int totalPages = 0,
      int totalResults = 0,
      List<Movie> movies = const [],
      bool hasMoreResults = false}) {
    return _MovieList(
      page: page,
      totalPages: totalPages,
      totalResults: totalResults,
      movies: movies,
      hasMoreResults: hasMoreResults,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MovieList = _$MovieListTearOff();

/// @nodoc
mixin _$MovieList {
  int get page;
  int get totalPages;
  int get totalResults;
  List<Movie> get movies;
  bool get hasMoreResults;

  $MovieListCopyWith<MovieList> get copyWith;
}

/// @nodoc
abstract class $MovieListCopyWith<$Res> {
  factory $MovieListCopyWith(MovieList value, $Res Function(MovieList) then) =
      _$MovieListCopyWithImpl<$Res>;
  $Res call(
      {int page,
      int totalPages,
      int totalResults,
      List<Movie> movies,
      bool hasMoreResults});
}

/// @nodoc
class _$MovieListCopyWithImpl<$Res> implements $MovieListCopyWith<$Res> {
  _$MovieListCopyWithImpl(this._value, this._then);

  final MovieList _value;
  // ignore: unused_field
  final $Res Function(MovieList) _then;

  @override
  $Res call({
    Object page = freezed,
    Object totalPages = freezed,
    Object totalResults = freezed,
    Object movies = freezed,
    Object hasMoreResults = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed ? _value.page : page as int,
      totalPages: totalPages == freezed ? _value.totalPages : totalPages as int,
      totalResults:
          totalResults == freezed ? _value.totalResults : totalResults as int,
      movies: movies == freezed ? _value.movies : movies as List<Movie>,
      hasMoreResults: hasMoreResults == freezed
          ? _value.hasMoreResults
          : hasMoreResults as bool,
    ));
  }
}

/// @nodoc
abstract class _$MovieListCopyWith<$Res> implements $MovieListCopyWith<$Res> {
  factory _$MovieListCopyWith(
          _MovieList value, $Res Function(_MovieList) then) =
      __$MovieListCopyWithImpl<$Res>;
  @override
  $Res call(
      {int page,
      int totalPages,
      int totalResults,
      List<Movie> movies,
      bool hasMoreResults});
}

/// @nodoc
class __$MovieListCopyWithImpl<$Res> extends _$MovieListCopyWithImpl<$Res>
    implements _$MovieListCopyWith<$Res> {
  __$MovieListCopyWithImpl(_MovieList _value, $Res Function(_MovieList) _then)
      : super(_value, (v) => _then(v as _MovieList));

  @override
  _MovieList get _value => super._value as _MovieList;

  @override
  $Res call({
    Object page = freezed,
    Object totalPages = freezed,
    Object totalResults = freezed,
    Object movies = freezed,
    Object hasMoreResults = freezed,
  }) {
    return _then(_MovieList(
      page: page == freezed ? _value.page : page as int,
      totalPages: totalPages == freezed ? _value.totalPages : totalPages as int,
      totalResults:
          totalResults == freezed ? _value.totalResults : totalResults as int,
      movies: movies == freezed ? _value.movies : movies as List<Movie>,
      hasMoreResults: hasMoreResults == freezed
          ? _value.hasMoreResults
          : hasMoreResults as bool,
    ));
  }
}

/// @nodoc
class _$_MovieList implements _MovieList {
  const _$_MovieList(
      {this.page = 0,
      this.totalPages = 0,
      this.totalResults = 0,
      this.movies = const [],
      this.hasMoreResults = false})
      : assert(page != null),
        assert(totalPages != null),
        assert(totalResults != null),
        assert(movies != null),
        assert(hasMoreResults != null);

  @JsonKey(defaultValue: 0)
  @override
  final int page;
  @JsonKey(defaultValue: 0)
  @override
  final int totalPages;
  @JsonKey(defaultValue: 0)
  @override
  final int totalResults;
  @JsonKey(defaultValue: const [])
  @override
  final List<Movie> movies;
  @JsonKey(defaultValue: false)
  @override
  final bool hasMoreResults;

  @override
  String toString() {
    return 'MovieList(page: $page, totalPages: $totalPages, totalResults: $totalResults, movies: $movies, hasMoreResults: $hasMoreResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieList &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.totalResults, totalResults) ||
                const DeepCollectionEquality()
                    .equals(other.totalResults, totalResults)) &&
            (identical(other.movies, movies) ||
                const DeepCollectionEquality().equals(other.movies, movies)) &&
            (identical(other.hasMoreResults, hasMoreResults) ||
                const DeepCollectionEquality()
                    .equals(other.hasMoreResults, hasMoreResults)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(totalResults) ^
      const DeepCollectionEquality().hash(movies) ^
      const DeepCollectionEquality().hash(hasMoreResults);

  @override
  _$MovieListCopyWith<_MovieList> get copyWith =>
      __$MovieListCopyWithImpl<_MovieList>(this, _$identity);
}

abstract class _MovieList implements MovieList {
  const factory _MovieList(
      {int page,
      int totalPages,
      int totalResults,
      List<Movie> movies,
      bool hasMoreResults}) = _$_MovieList;

  @override
  int get page;
  @override
  int get totalPages;
  @override
  int get totalResults;
  @override
  List<Movie> get movies;
  @override
  bool get hasMoreResults;
  @override
  _$MovieListCopyWith<_MovieList> get copyWith;
}
