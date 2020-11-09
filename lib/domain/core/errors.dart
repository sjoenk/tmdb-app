import 'failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation = 'Encounted a ValueFailure at an unrecoverable point. Terminating. ';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}
