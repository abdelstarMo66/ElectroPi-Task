import 'package:mzady/core/services/remote/api_result.dart';
import 'package:mzady/features/authentication/domain/repo/authentication_repo.dart';
import 'package:mzady/features/authentication/domain/use_cases/params/verify_account_param.dart';

class VerifyAccountUseCase {
  const VerifyAccountUseCase(this._repo);

  final AuthenticationRepo _repo;

  Future<ApiResult<void>> execute({required VerifyAccountParam body}) {
    return _repo.verifyAccount(body);
  }
}
