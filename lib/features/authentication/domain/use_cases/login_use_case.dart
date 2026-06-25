import 'package:mzady/core/services/remote/api_result.dart';
import 'package:mzady/features/authentication/domain/repo/authentication_repo.dart';
import 'package:mzady/features/authentication/domain/use_cases/params/login_param.dart';

class LoginUseCase {
  const LoginUseCase(this._repo);

  final AuthenticationRepo _repo;

  Future<ApiResult<void>> execute({required LoginParam body}) {
    return _repo.login(body);
  }
}
