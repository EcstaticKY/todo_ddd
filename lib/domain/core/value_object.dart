import 'package:dartz/dartz.dart';
import 'package:todo_ddd/domain/core/value_failures.dart';

abstract class ValueObject<T> {
  final Either<ValueFailure<T>, T> value;

  const ValueObject(this.value);

  @override
  String toString() {
    return 'ValueObject{value: $value}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ValueObject<T> &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}
