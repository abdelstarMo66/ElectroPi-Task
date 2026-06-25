import 'package:dio/dio.dart';
import 'package:mzady/core/services/remote/base_response.dart';
import 'package:mzady/core/services/remote/network_utils.dart';
import 'package:mzady/features/profile/data/models/request/add_address_request_body.dart';
import 'package:mzady/features/profile/data/models/request/change_password_request_body.dart';
import 'package:mzady/features/profile/data/models/request/update_profile_request_body.dart';
import 'package:mzady/features/profile/data/models/response/profile_response.dart';
import 'package:retrofit/retrofit.dart';

part 'profile_api.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ProfileApi {
  factory ProfileApi(Dio dio, {String baseUrl}) = _ProfileApi;

  @GET(ApiConstants.profile)
  Future<BaseResponse<ProfileData>> getProfile({
    @Header('Authorization') required String token,
  });

  @PATCH(ApiConstants.profile)
  Future<BaseResponse<ProfileData>> updateProfile({
    @Body() required UpdateProfileRequestBody body,
    @Header('Authorization') required String token,
  });

  @PATCH(ApiConstants.changePassword)
  Future<BaseResponse<dynamic>> changePassword({
    @Body() required ChangePasswordRequestBody body,
    @Header('Authorization') required String token,
  });

  @POST(ApiConstants.addAddress)
  Future<BaseResponse<ProfileData>> addAddress({
    @Body() required AddAddressRequestBody body,
    @Header('Authorization') required String token,
  });

  @PATCH(ApiConstants.address)
  Future<BaseResponse<ProfileData>> setAddressAsDefault({
    @Header('Authorization') required String token,
    @Path('id') required String id,
  });

  @DELETE(ApiConstants.address)
  Future<BaseResponse<ProfileData>> deleteAddress({
    @Header('Authorization') required String token,
    @Path('id') required String id,
  });
}
