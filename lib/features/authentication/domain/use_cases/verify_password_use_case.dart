import 'package:mzady/core/services/remote/api_result.dart';
import 'package:mzady/features/authentication/domain/repo/authentication_repo.dart';
import 'package:mzady/features/authentication/domain/use_cases/params/verify_password_param.dart';

class VerifyPasswordUseCase {
  const VerifyPasswordUseCase(this._repo);

  final AuthenticationRepo _repo;

  Future<ApiResult<void>> execute({required VerifyPasswordParam body}) {
    return _repo.verifyPassword(body);
  }
}
