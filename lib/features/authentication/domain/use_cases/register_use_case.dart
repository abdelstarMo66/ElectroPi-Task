import 'package:mzady/core/services/remote/api_result.dart';
import 'package:mzady/features/authentication/domain/repo/authentication_repo.dart';
import 'package:mzady/features/authentication/domain/use_cases/params/register_param.dart';

class RegisterUseCase {
  const RegisterUseCase(this._repo);

  final AuthenticationRepo _repo;

  Future<ApiResult<void>> execute({required RegisterParam body}) {
    return _repo.register(body);
  }
}
