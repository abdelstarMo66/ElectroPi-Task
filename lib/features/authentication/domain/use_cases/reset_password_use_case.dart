import 'package:mzady/core/services/remote/api_result.dart';
import 'package:mzady/features/authentication/domain/repo/authentication_repo.dart';
import 'package:mzady/features/authentication/domain/use_cases/params/reset_password_param.dart';

class ResetPasswordUseCase {
  const ResetPasswordUseCase(this._repo);

  final AuthenticationRepo _repo;

  Future<ApiResult<void>> execute({required ResetPasswordParam body}) {
    return _repo.resetPassword(body);
  }
}
