import 'package:todo_ddd/domain/core/validators.dart';
import 'package:todo_ddd/domain/core/value_object.dart';

class Password extends ValueObject<String> {
  Password(String input) : super(validatePassword(input));
}

class EmailAddress extends ValueObject<String> {
  EmailAddress(String input) : super(validateEmailAddress(input));
}
