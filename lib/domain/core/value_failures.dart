abstract class ValueFailure<T> {
  final T invalidValue;

  const ValueFailure(this.invalidValue);

  @override
  String toString() {
    return 'ValueFailure{invalidValue: $invalidValue}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ValueFailure &&
          runtimeType == other.runtimeType &&
          invalidValue == other.invalidValue;

  @override
  int get hashCode => invalidValue.hashCode;
}

class InvalidEmailFailure extends ValueFailure<String> {
  InvalidEmailFailure(String invalidValue) : super(invalidValue);
}

class PasswordExceedingLengthFailure extends ValueFailure<String> {
  PasswordExceedingLengthFailure(String invalidValue) : super(invalidValue);
}

class SignInFailure extends ValueFailure<String> {
  SignInFailure(String invalidValue) : super(invalidValue);
}

class RegisterFailure extends ValueFailure<String> {
  RegisterFailure(String invalidValue) : super(invalidValue);
}

class SignInThroughGoogleFailure extends ValueFailure<String> {
  SignInThroughGoogleFailure(String invalidValue) : super(invalidValue);
}
