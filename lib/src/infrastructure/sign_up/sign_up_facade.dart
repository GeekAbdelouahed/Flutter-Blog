import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/api_error/api_error.dart';
import '../../domain/entities/api_response/api_response.dart';
import '../../domain/entities/user/user.dart';
import '../../domain/sign_up/i_sign_up_facade.dart';
import '../core/network/network.dart';

@LazySingleton(as: ISignUpFacade)
class SignUpFacade implements ISignUpFacade {
  @override
  Future<Either<ApiError, ApiResponse>> signUp({User user}) async {
    try {
      final apiResponse = await AppNetwork.instance.signUp(user);
      if (apiResponse.status) {
        return right(apiResponse);
      } else {
        return left(
          ApiError(message: apiResponse.message),
        );
      }
    } catch (e) {
      return left(
        ApiError(message: '$e'),
      );
    }
  }
}
