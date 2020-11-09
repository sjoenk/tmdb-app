part of 'movie_details_bloc.dart';

@freezed
abstract class MovieDetailsState with _$MovieDetailsState {
  const factory MovieDetailsState.loading() = _Loading;
  const factory MovieDetailsState.failure({@required MovieFailure failure}) = _Failure;
  const factory MovieDetailsState.loaded({
    @required Movie movie,
  }) = _Loaded;
}
