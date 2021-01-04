import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../entities/api_error/api_error.dart';
import '../entities/api_response/api_response.dart';
import '../entities/user/user.dart';

abstract class ISignUpFacade {
  Future<Either<ApiError, ApiResponse>> signUp({@required User user});
}
