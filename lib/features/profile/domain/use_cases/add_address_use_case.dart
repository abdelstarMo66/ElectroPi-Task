import 'package:mzady/core/services/remote/api_result.dart';
import 'package:mzady/features/profile/domain/entities/user_entity.dart';
import 'package:mzady/features/profile/domain/repo/profile_repo.dart';
import 'package:mzady/features/profile/domain/use_cases/params/add_address_param.dart';

class AddAddressUseCase {
  const AddAddressUseCase(this._repo);

  final ProfileRepo _repo;

  Future<ApiResult<UserEntity>> execute({required AddAddressParam body}) {
    return _repo.addAddress(body);
  }
}
