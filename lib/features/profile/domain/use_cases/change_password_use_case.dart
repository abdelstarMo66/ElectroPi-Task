import 'package:mzady/core/services/remote/api_result.dart';
import 'package:mzady/features/profile/domain/repo/profile_repo.dart';
import 'package:mzady/features/profile/domain/use_cases/params/change_password_param.dart';

class ChangePasswordUseCase {
  const ChangePasswordUseCase(this._repo);

  final ProfileRepo _repo;

  Future<ApiResult<void>> execute({required ChangePasswordParam body}) {
    return _repo.changePassword(body);
  }
}
