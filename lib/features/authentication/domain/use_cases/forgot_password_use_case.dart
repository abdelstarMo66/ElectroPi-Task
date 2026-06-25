import 'package:mzady/core/services/remote/api_result.dart';
import 'package:mzady/features/authentication/domain/repo/authentication_repo.dart';
import 'package:mzady/features/authentication/domain/use_cases/params/forgot_password_param.dart';

class ForgotPasswordUseCase {
  const ForgotPasswordUseCase(this._repo);

  final AuthenticationRepo _repo;

  Future<ApiResult<void>> execute({required ForgotPasswordParam body}) {
    return _repo.forgotPassword(body);
  }
}
