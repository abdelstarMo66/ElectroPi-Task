import 'package:mzady/core/services/remote/api_result.dart';
import 'package:mzady/features/profile/domain/entities/user_entity.dart';
import 'package:mzady/features/profile/domain/repo/profile_repo.dart';
import 'package:mzady/features/profile/domain/use_cases/params/update_profile_param.dart';

class UpdateProfileUseCase {
  const UpdateProfileUseCase(this._repo);

  final ProfileRepo _repo;

  Future<ApiResult<UserEntity>> execute({required UpdateProfileParam body}) {
    return _repo.updateProfile(body);
  }
}
