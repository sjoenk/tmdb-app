// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieDto _$_$_MovieDtoFromJson(Map<String, dynamic> json) {
  return _$_MovieDto(
    id: json['id'] as int,
    posterPath: json['poster_path'] as String,
    adult: json['adult'] as bool,
    overview: json['overview'] as String,
    releaseDate: MovieDto.jsonToDateTime(json['release_date'] as String),
    genreIds: (json['genre_ids'] as List)?.map((e) => e as int)?.toList(),
    originalTitle: json['original_title'] as String,
    originalLanguage: json['original_language'] as String,
    title: json['title'] as String,
    backdropPath: json['backdrop_path'] as String,
    popularity: (json['popularity'] as num)?.toDouble(),
    voteCount: json['vote_count'] as int,
    video: json['video'] as bool,
    voteAverage: (json['vote_average'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_MovieDtoToJson(_$_MovieDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'poster_path': instance.posterPath,
      'adult': instance.adult,
      'overview': instance.overview,
      'release_date': instance.releaseDate?.toIso8601String(),
      'genre_ids': instance.genreIds,
      'original_title': instance.originalTitle,
      'original_language': instance.originalLanguage,
      'title': instance.title,
      'backdrop_path': instance.backdropPath,
      'popularity': instance.popularity,
      'vote_count': instance.voteCount,
      'video': instance.video,
      'vote_average': instance.voteAverage,
    };
