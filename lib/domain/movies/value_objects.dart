import 'package:dartz/dartz.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';

class PosterPath extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PosterPath(String input) {
    return PosterPath._(
      right(input),
    );
  }

  const PosterPath._(this.value);
}
