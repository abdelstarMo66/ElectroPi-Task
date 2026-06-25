import 'package:mzady/core/services/remote/api_result.dart';
import 'package:mzady/features/profile/domain/entities/user_entity.dart';
import 'package:mzady/features/profile/domain/use_cases/params/add_address_param.dart';
import 'package:mzady/features/profile/domain/use_cases/params/change_password_param.dart';
import 'package:mzady/features/profile/domain/use_cases/params/update_profile_param.dart';

abstract class ProfileRepo {
  Future<ApiResult<UserEntity>> getProfile();

  Future<ApiResult<UserEntity>> updateProfile(UpdateProfileParam body);

  Future<ApiResult<void>> changePassword(ChangePasswordParam body);

  Future<ApiResult<UserEntity>> addAddress(AddAddressParam body);

  Future<ApiResult<UserEntity>> setAddressAsDefault(String addressId);

  Future<ApiResult<UserEntity>> deleteAddress(String addressId);
}
