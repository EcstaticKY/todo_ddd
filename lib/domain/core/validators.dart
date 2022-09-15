import 'package:dartz/dartz.dart';
import 'package:todo_ddd/domain/core/value_failures.dart';

Either<ValueFailure, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return Right(input);
  } else {
    return Left(InvalidEmailFailure(input));
  }
}

Either<ValueFailure, String> validatePassword(String input) {
  if (input == null || input.length < 6) {
    return Left(PasswordExceedingLengthFailure(input));
  }
  return Right(input);
}
