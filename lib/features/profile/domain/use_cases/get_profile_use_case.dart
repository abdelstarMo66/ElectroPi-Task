import 'package:mzady/core/services/remote/api_result.dart';
import 'package:mzady/features/profile/domain/entities/user_entity.dart';
import 'package:mzady/features/profile/domain/repo/profile_repo.dart';

class GetProfileUseCase {
  const GetProfileUseCase(this._repo);

  final ProfileRepo _repo;

  Future<ApiResult<UserEntity>> execute() {
    return _repo.getProfile();
  }
}
