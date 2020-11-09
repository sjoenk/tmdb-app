// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'movie_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MovieDto _$MovieDtoFromJson(Map<String, dynamic> json) {
  return _MovieDto.fromJson(json);
}

/// @nodoc
class _$MovieDtoTearOff {
  const _$MovieDtoTearOff();

// ignore: unused_element
  _MovieDto call(
      {@required
          int id,
      @JsonKey(name: 'poster_path')
          String posterPath,
      @JsonKey(name: 'adult')
          bool adult,
      @JsonKey(name: 'overview')
          String overview,
      @JsonKey(name: 'release_date', fromJson: MovieDto.jsonToDateTime)
          DateTime releaseDate,
      @JsonKey(name: 'genre_ids')
          List<int> genreIds,
      @JsonKey(name: 'original_title')
          String originalTitle,
      @JsonKey(name: 'original_language')
          String originalLanguage,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'backdrop_path')
          String backdropPath,
      @JsonKey(name: 'popularity')
          double popularity,
      @JsonKey(name: 'vote_count')
          int voteCount,
      @JsonKey(name: 'video')
          bool video,
      @JsonKey(name: 'vote_average')
          double voteAverage}) {
    return _MovieDto(
      id: id,
      posterPath: posterPath,
      adult: adult,
      overview: overview,
      releaseDate: releaseDate,
      genreIds: genreIds,
      originalTitle: originalTitle,
      originalLanguage: originalLanguage,
      title: title,
      backdropPath: backdropPath,
      popularity: popularity,
      voteCount: voteCount,
      video: video,
      voteAverage: voteAverage,
    );
  }

// ignore: unused_element
  MovieDto fromJson(Map<String, Object> json) {
    return MovieDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MovieDto = _$MovieDtoTearOff();

/// @nodoc
mixin _$MovieDto {
  int get id;
  @JsonKey(name: 'poster_path')
  String get posterPath;
  @JsonKey(name: 'adult')
  bool get adult;
  @JsonKey(name: 'overview')
  String get overview;
  @JsonKey(name: 'release_date', fromJson: MovieDto.jsonToDateTime)
  DateTime get releaseDate;
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds;
  @JsonKey(name: 'original_title')
  String get originalTitle;
  @JsonKey(name: 'original_language')
  String get originalLanguage;
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'backdrop_path')
  String get backdropPath;
  @JsonKey(name: 'popularity')
  double get popularity;
  @JsonKey(name: 'vote_count')
  int get voteCount;
  @JsonKey(name: 'video')
  bool get video;
  @JsonKey(name: 'vote_average')
  double get voteAverage;

  Map<String, dynamic> toJson();
  $MovieDtoCopyWith<MovieDto> get copyWith;
}

/// @nodoc
abstract class $MovieDtoCopyWith<$Res> {
  factory $MovieDtoCopyWith(MovieDto value, $Res Function(MovieDto) then) =
      _$MovieDtoCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'poster_path')
          String posterPath,
      @JsonKey(name: 'adult')
          bool adult,
      @JsonKey(name: 'overview')
          String overview,
      @JsonKey(name: 'release_date', fromJson: MovieDto.jsonToDateTime)
          DateTime releaseDate,
      @JsonKey(name: 'genre_ids')
          List<int> genreIds,
      @JsonKey(name: 'original_title')
          String originalTitle,
      @JsonKey(name: 'original_language')
          String originalLanguage,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'backdrop_path')
          String backdropPath,
      @JsonKey(name: 'popularity')
          double popularity,
      @JsonKey(name: 'vote_count')
          int voteCount,
      @JsonKey(name: 'video')
          bool video,
      @JsonKey(name: 'vote_average')
          double voteAverage});
}

/// @nodoc
class _$MovieDtoCopyWithImpl<$Res> implements $MovieDtoCopyWith<$Res> {
  _$MovieDtoCopyWithImpl(this._value, this._then);

  final MovieDto _value;
  // ignore: unused_field
  final $Res Function(MovieDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object posterPath = freezed,
    Object adult = freezed,
    Object overview = freezed,
    Object releaseDate = freezed,
    Object genreIds = freezed,
    Object originalTitle = freezed,
    Object originalLanguage = freezed,
    Object title = freezed,
    Object backdropPath = freezed,
    Object popularity = freezed,
    Object voteCount = freezed,
    Object video = freezed,
    Object voteAverage = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      posterPath:
          posterPath == freezed ? _value.posterPath : posterPath as String,
      adult: adult == freezed ? _value.adult : adult as bool,
      overview: overview == freezed ? _value.overview : overview as String,
      releaseDate:
          releaseDate == freezed ? _value.releaseDate : releaseDate as DateTime,
      genreIds: genreIds == freezed ? _value.genreIds : genreIds as List<int>,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle as String,
      originalLanguage: originalLanguage == freezed
          ? _value.originalLanguage
          : originalLanguage as String,
      title: title == freezed ? _value.title : title as String,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath as String,
      popularity:
          popularity == freezed ? _value.popularity : popularity as double,
      voteCount: voteCount == freezed ? _value.voteCount : voteCount as int,
      video: video == freezed ? _value.video : video as bool,
      voteAverage:
          voteAverage == freezed ? _value.voteAverage : voteAverage as double,
    ));
  }
}

/// @nodoc
abstract class _$MovieDtoCopyWith<$Res> implements $MovieDtoCopyWith<$Res> {
  factory _$MovieDtoCopyWith(_MovieDto value, $Res Function(_MovieDto) then) =
      __$MovieDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'poster_path')
          String posterPath,
      @JsonKey(name: 'adult')
          bool adult,
      @JsonKey(name: 'overview')
          String overview,
      @JsonKey(name: 'release_date', fromJson: MovieDto.jsonToDateTime)
          DateTime releaseDate,
      @JsonKey(name: 'genre_ids')
          List<int> genreIds,
      @JsonKey(name: 'original_title')
          String originalTitle,
      @JsonKey(name: 'original_language')
          String originalLanguage,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'backdrop_path')
          String backdropPath,
      @JsonKey(name: 'popularity')
          double popularity,
      @JsonKey(name: 'vote_count')
          int voteCount,
      @JsonKey(name: 'video')
          bool video,
      @JsonKey(name: 'vote_average')
          double voteAverage});
}

/// @nodoc
class __$MovieDtoCopyWithImpl<$Res> extends _$MovieDtoCopyWithImpl<$Res>
    implements _$MovieDtoCopyWith<$Res> {
  __$MovieDtoCopyWithImpl(_MovieDto _value, $Res Function(_MovieDto) _then)
      : super(_value, (v) => _then(v as _MovieDto));

  @override
  _MovieDto get _value => super._value as _MovieDto;

  @override
  $Res call({
    Object id = freezed,
    Object posterPath = freezed,
    Object adult = freezed,
    Object overview = freezed,
    Object releaseDate = freezed,
    Object genreIds = freezed,
    Object originalTitle = freezed,
    Object originalLanguage = freezed,
    Object title = freezed,
    Object backdropPath = freezed,
    Object popularity = freezed,
    Object voteCount = freezed,
    Object video = freezed,
    Object voteAverage = freezed,
  }) {
    return _then(_MovieDto(
      id: id == freezed ? _value.id : id as int,
      posterPath:
          posterPath == freezed ? _value.posterPath : posterPath as String,
      adult: adult == freezed ? _value.adult : adult as bool,
      overview: overview == freezed ? _value.overview : overview as String,
      releaseDate:
          releaseDate == freezed ? _value.releaseDate : releaseDate as DateTime,
      genreIds: genreIds == freezed ? _value.genreIds : genreIds as List<int>,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle as String,
      originalLanguage: originalLanguage == freezed
          ? _value.originalLanguage
          : originalLanguage as String,
      title: title == freezed ? _value.title : title as String,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath as String,
      popularity:
          popularity == freezed ? _value.popularity : popularity as double,
      voteCount: voteCount == freezed ? _value.voteCount : voteCount as int,
      video: video == freezed ? _value.video : video as bool,
      voteAverage:
          voteAverage == freezed ? _value.voteAverage : voteAverage as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MovieDto extends _MovieDto {
  const _$_MovieDto(
      {@required
          this.id,
      @JsonKey(name: 'poster_path')
          this.posterPath,
      @JsonKey(name: 'adult')
          this.adult,
      @JsonKey(name: 'overview')
          this.overview,
      @JsonKey(name: 'release_date', fromJson: MovieDto.jsonToDateTime)
          this.releaseDate,
      @JsonKey(name: 'genre_ids')
          this.genreIds,
      @JsonKey(name: 'original_title')
          this.originalTitle,
      @JsonKey(name: 'original_language')
          this.originalLanguage,
      @JsonKey(name: 'title')
          this.title,
      @JsonKey(name: 'backdrop_path')
          this.backdropPath,
      @JsonKey(name: 'popularity')
          this.popularity,
      @JsonKey(name: 'vote_count')
          this.voteCount,
      @JsonKey(name: 'video')
          this.video,
      @JsonKey(name: 'vote_average')
          this.voteAverage})
      : assert(id != null),
        super._();

  factory _$_MovieDto.fromJson(Map<String, dynamic> json) =>
      _$_$_MovieDtoFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'poster_path')
  final String posterPath;
  @override
  @JsonKey(name: 'adult')
  final bool adult;
  @override
  @JsonKey(name: 'overview')
  final String overview;
  @override
  @JsonKey(name: 'release_date', fromJson: MovieDto.jsonToDateTime)
  final DateTime releaseDate;
  @override
  @JsonKey(name: 'genre_ids')
  final List<int> genreIds;
  @override
  @JsonKey(name: 'original_title')
  final String originalTitle;
  @override
  @JsonKey(name: 'original_language')
  final String originalLanguage;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'backdrop_path')
  final String backdropPath;
  @override
  @JsonKey(name: 'popularity')
  final double popularity;
  @override
  @JsonKey(name: 'vote_count')
  final int voteCount;
  @override
  @JsonKey(name: 'video')
  final bool video;
  @override
  @JsonKey(name: 'vote_average')
  final double voteAverage;

  @override
  String toString() {
    return 'MovieDto(id: $id, posterPath: $posterPath, adult: $adult, overview: $overview, releaseDate: $releaseDate, genreIds: $genreIds, originalTitle: $originalTitle, originalLanguage: $originalLanguage, title: $title, backdropPath: $backdropPath, popularity: $popularity, voteCount: $voteCount, video: $video, voteAverage: $voteAverage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.posterPath, posterPath) ||
                const DeepCollectionEquality()
                    .equals(other.posterPath, posterPath)) &&
            (identical(other.adult, adult) ||
                const DeepCollectionEquality().equals(other.adult, adult)) &&
            (identical(other.overview, overview) ||
                const DeepCollectionEquality()
                    .equals(other.overview, overview)) &&
            (identical(other.releaseDate, releaseDate) ||
                const DeepCollectionEquality()
                    .equals(other.releaseDate, releaseDate)) &&
            (identical(other.genreIds, genreIds) ||
                const DeepCollectionEquality()
                    .equals(other.genreIds, genreIds)) &&
            (identical(other.originalTitle, originalTitle) ||
                const DeepCollectionEquality()
                    .equals(other.originalTitle, originalTitle)) &&
            (identical(other.originalLanguage, originalLanguage) ||
                const DeepCollectionEquality()
                    .equals(other.originalLanguage, originalLanguage)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.backdropPath, backdropPath) ||
                const DeepCollectionEquality()
                    .equals(other.backdropPath, backdropPath)) &&
            (identical(other.popularity, popularity) ||
                const DeepCollectionEquality()
                    .equals(other.popularity, popularity)) &&
            (identical(other.voteCount, voteCount) ||
                const DeepCollectionEquality()
                    .equals(other.voteCount, voteCount)) &&
            (identical(other.video, video) ||
                const DeepCollectionEquality().equals(other.video, video)) &&
            (identical(other.voteAverage, voteAverage) ||
                const DeepCollectionEquality()
                    .equals(other.voteAverage, voteAverage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(posterPath) ^
      const DeepCollectionEquality().hash(adult) ^
      const DeepCollectionEquality().hash(overview) ^
      const DeepCollectionEquality().hash(releaseDate) ^
      const DeepCollectionEquality().hash(genreIds) ^
      const DeepCollectionEquality().hash(originalTitle) ^
      const DeepCollectionEquality().hash(originalLanguage) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(backdropPath) ^
      const DeepCollectionEquality().hash(popularity) ^
      const DeepCollectionEquality().hash(voteCount) ^
      const DeepCollectionEquality().hash(video) ^
      const DeepCollectionEquality().hash(voteAverage);

  @override
  _$MovieDtoCopyWith<_MovieDto> get copyWith =>
      __$MovieDtoCopyWithImpl<_MovieDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MovieDtoToJson(this);
  }
}

abstract class _MovieDto extends MovieDto {
  const _MovieDto._() : super._();
  const factory _MovieDto(
      {@required
          int id,
      @JsonKey(name: 'poster_path')
          String posterPath,
      @JsonKey(name: 'adult')
          bool adult,
      @JsonKey(name: 'overview')
          String overview,
      @JsonKey(name: 'release_date', fromJson: MovieDto.jsonToDateTime)
          DateTime releaseDate,
      @JsonKey(name: 'genre_ids')
          List<int> genreIds,
      @JsonKey(name: 'original_title')
          String originalTitle,
      @JsonKey(name: 'original_language')
          String originalLanguage,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'backdrop_path')
          String backdropPath,
      @JsonKey(name: 'popularity')
          double popularity,
      @JsonKey(name: 'vote_count')
          int voteCount,
      @JsonKey(name: 'video')
          bool video,
      @JsonKey(name: 'vote_average')
          double voteAverage}) = _$_MovieDto;

  factory _MovieDto.fromJson(Map<String, dynamic> json) = _$_MovieDto.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'poster_path')
  String get posterPath;
  @override
  @JsonKey(name: 'adult')
  bool get adult;
  @override
  @JsonKey(name: 'overview')
  String get overview;
  @override
  @JsonKey(name: 'release_date', fromJson: MovieDto.jsonToDateTime)
  DateTime get releaseDate;
  @override
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds;
  @override
  @JsonKey(name: 'original_title')
  String get originalTitle;
  @override
  @JsonKey(name: 'original_language')
  String get originalLanguage;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'backdrop_path')
  String get backdropPath;
  @override
  @JsonKey(name: 'popularity')
  double get popularity;
  @override
  @JsonKey(name: 'vote_count')
  int get voteCount;
  @override
  @JsonKey(name: 'video')
  bool get video;
  @override
  @JsonKey(name: 'vote_average')
  double get voteAverage;
  @override
  _$MovieDtoCopyWith<_MovieDto> get copyWith;
}

/// @nodoc
class _$MovieListDtoTearOff {
  const _$MovieListDtoTearOff();

// ignore: unused_element
  _MovieListDto call(
      {@required int page,
      @required int totalPages,
      @required int totalResults,
      @required List<Movie> movies}) {
    return _MovieListDto(
      page: page,
      totalPages: totalPages,
      totalResults: totalResults,
      movies: movies,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MovieListDto = _$MovieListDtoTearOff();

/// @nodoc
mixin _$MovieListDto {
  int get page;
  int get totalPages;
  int get totalResults;
  List<Movie> get movies;

  $MovieListDtoCopyWith<MovieListDto> get copyWith;
}

/// @nodoc
abstract class $MovieListDtoCopyWith<$Res> {
  factory $MovieListDtoCopyWith(
          MovieListDto value, $Res Function(MovieListDto) then) =
      _$MovieListDtoCopyWithImpl<$Res>;
  $Res call({int page, int totalPages, int totalResults, List<Movie> movies});
}

/// @nodoc
class _$MovieListDtoCopyWithImpl<$Res> implements $MovieListDtoCopyWith<$Res> {
  _$MovieListDtoCopyWithImpl(this._value, this._then);

  final MovieListDto _value;
  // ignore: unused_field
  final $Res Function(MovieListDto) _then;

  @override
  $Res call({
    Object page = freezed,
    Object totalPages = freezed,
    Object totalResults = freezed,
    Object movies = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed ? _value.page : page as int,
      totalPages: totalPages == freezed ? _value.totalPages : totalPages as int,
      totalResults:
          totalResults == freezed ? _value.totalResults : totalResults as int,
      movies: movies == freezed ? _value.movies : movies as List<Movie>,
    ));
  }
}

/// @nodoc
abstract class _$MovieListDtoCopyWith<$Res>
    implements $MovieListDtoCopyWith<$Res> {
  factory _$MovieListDtoCopyWith(
          _MovieListDto value, $Res Function(_MovieListDto) then) =
      __$MovieListDtoCopyWithImpl<$Res>;
  @override
  $Res call({int page, int totalPages, int totalResults, List<Movie> movies});
}

/// @nodoc
class __$MovieListDtoCopyWithImpl<$Res> extends _$MovieListDtoCopyWithImpl<$Res>
    implements _$MovieListDtoCopyWith<$Res> {
  __$MovieListDtoCopyWithImpl(
      _MovieListDto _value, $Res Function(_MovieListDto) _then)
      : super(_value, (v) => _then(v as _MovieListDto));

  @override
  _MovieListDto get _value => super._value as _MovieListDto;

  @override
  $Res call({
    Object page = freezed,
    Object totalPages = freezed,
    Object totalResults = freezed,
    Object movies = freezed,
  }) {
    return _then(_MovieListDto(
      page: page == freezed ? _value.page : page as int,
      totalPages: totalPages == freezed ? _value.totalPages : totalPages as int,
      totalResults:
          totalResults == freezed ? _value.totalResults : totalResults as int,
      movies: movies == freezed ? _value.movies : movies as List<Movie>,
    ));
  }
}

/// @nodoc
class _$_MovieListDto implements _MovieListDto {
  const _$_MovieListDto(
      {@required this.page,
      @required this.totalPages,
      @required this.totalResults,
      @required this.movies})
      : assert(page != null),
        assert(totalPages != null),
        assert(totalResults != null),
        assert(movies != null);

  @override
  final int page;
  @override
  final int totalPages;
  @override
  final int totalResults;
  @override
  final List<Movie> movies;

  @override
  String toString() {
    return 'MovieListDto(page: $page, totalPages: $totalPages, totalResults: $totalResults, movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieListDto &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.totalResults, totalResults) ||
                const DeepCollectionEquality()
                    .equals(other.totalResults, totalResults)) &&
            (identical(other.movies, movies) ||
                const DeepCollectionEquality().equals(other.movies, movies)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(totalResults) ^
      const DeepCollectionEquality().hash(movies);

  @override
  _$MovieListDtoCopyWith<_MovieListDto> get copyWith =>
      __$MovieListDtoCopyWithImpl<_MovieListDto>(this, _$identity);
}

abstract class _MovieListDto implements MovieListDto {
  const factory _MovieListDto(
      {@required int page,
      @required int totalPages,
      @required int totalResults,
      @required List<Movie> movies}) = _$_MovieListDto;

  @override
  int get page;
  @override
  int get totalPages;
  @override
  int get totalResults;
  @override
  List<Movie> get movies;
  @override
  _$MovieListDtoCopyWith<_MovieListDto> get copyWith;
}
