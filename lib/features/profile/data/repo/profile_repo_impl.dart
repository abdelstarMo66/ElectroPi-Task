import 'package:mzady/core/services/local/secure_utils.dart';
import 'package:mzady/core/services/remote/api_result.dart';
import 'package:mzady/core/services/remote/base_response.dart';
import 'package:mzady/core/services/remote/network_utils.dart';
import 'package:mzady/features/profile/data/api/profile_api.dart';
import 'package:mzady/features/profile/data/models/request/add_address_request_body.dart';
import 'package:mzady/features/profile/data/models/request/change_password_request_body.dart';
import 'package:mzady/features/profile/data/models/request/update_profile_request_body.dart';
import 'package:mzady/features/profile/data/models/response/profile_response.dart';
import 'package:mzady/features/profile/domain/entities/user_entity.dart';
import 'package:mzady/features/profile/domain/repo/profile_repo.dart';
import 'package:mzady/features/profile/domain/use_cases/params/add_address_param.dart';
import 'package:mzady/features/profile/domain/use_cases/params/change_password_param.dart';
import 'package:mzady/features/profile/domain/use_cases/params/update_profile_param.dart';

class ProfileRepoImpl extends ProfileRepo {
  final ProfileApi _profileApi;
  final SecureMethods _secureMethods;

  ProfileRepoImpl(this._profileApi, this._secureMethods);

  @override
  Future<ApiResult<UserEntity>> addAddress(AddAddressParam body) {
    return NetworkMethods.safeApiCall(() async {
      final BaseResponse<ProfileData> response = await _profileApi.addAddress(
        body: AddAddressRequestBody.toParam(body),
        token: await _secureMethods.getToken(),
      );

      return response.data!.toEntity();
    });
  }

  @override
  Future<ApiResult<void>> changePassword(ChangePasswordParam body) {
    return NetworkMethods.safeApiCall(() async {
      await _profileApi.changePassword(
        body: ChangePasswordRequestBody.toParam(body),
        token: await _secureMethods.getToken(),
      );

      return;
    });
  }

  @override
  Future<ApiResult<UserEntity>> deleteAddress(String addressId) {
    return NetworkMethods.safeApiCall(() async {
      final BaseResponse<ProfileData> response = await _profileApi
          .deleteAddress(id: addressId, token: await _secureMethods.getToken());

      return response.data!.toEntity();
    });
  }

  @override
  Future<ApiResult<UserEntity>> getProfile() {
    return NetworkMethods.safeApiCall<UserEntity>(() async {
      final BaseResponse<ProfileData> response = await _profileApi.getProfile(
        token: await _secureMethods.getToken(),
      );

      return response.data!.toEntity();
    });
  }

  @override
  Future<ApiResult<UserEntity>> setAddressAsDefault(String addressId) {
    return NetworkMethods.safeApiCall(() async {
      final BaseResponse<ProfileData> response = await _profileApi
          .setAddressAsDefault(
            id: addressId,
            token: await _secureMethods.getToken(),
          );

      return response.data!.toEntity();
    });
  }

  @override
  Future<ApiResult<UserEntity>> updateProfile(UpdateProfileParam body) {
    return NetworkMethods.safeApiCall(() async {
      final BaseResponse<ProfileData> response = await _profileApi
          .updateProfile(
            body: UpdateProfileRequestBody.toParam(body),
            token: await _secureMethods.getToken(),
          );

      return response.data!.toEntity();
    });
  }
}
