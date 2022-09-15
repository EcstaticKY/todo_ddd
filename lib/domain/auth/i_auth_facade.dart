import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:todo_ddd/domain/auth/value_objects.dart';

import 'auth_failure.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> signInWith(
      {@required EmailAddress emailAddress, @required Password password});

  Future<Either<AuthFailure, Unit>> registerWith(
      {@required EmailAddress emailAddress, @required Password password});

  Future<Either<AuthFailure, Unit>> signInWithGoogle();
}
