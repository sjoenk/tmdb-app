import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_failure.freezed.dart';

@freezed
abstract class MovieFailure<T> with _$MovieFailure<T> {
  const factory MovieFailure.unexpected({
    @required String message,
  }) = _Unexpected;
  const factory MovieFailure.unauthorized({
    @required String message,
  }) = _Unauthorized;
  const factory MovieFailure.notFound({
    @required String message,
  }) = _NotFound;
  const factory MovieFailure.invalidRequest({
    @required String message,
  }) = _InvalidRequest;
}
