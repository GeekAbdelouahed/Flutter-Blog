import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/api_error/api_error.dart';
import '../../domain/entities/api_response/api_response.dart';
import '../../domain/entities/user/user.dart';
import '../../domain/sign_in/i_sign_in_facade.dart';
import '../../injection.dart';
import '../core/network/network.dart';

@LazySingleton(as: ISignInFacade)
class SignInFacade implements ISignInFacade {
  @override
  Future<Either<ApiError, ApiResponse>> signIn({User user}) async {
    try {
      final apiResponse = await getIt<AppNetworkClient>().signIn(user);
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
