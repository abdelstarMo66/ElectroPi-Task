import 'package:dio/dio.dart';
import 'package:mzady/core/services/remote/base_response.dart';
import 'package:mzady/core/services/remote/network_utils.dart';
import 'package:mzady/features/authentication/data/models/requests/forgot_password_request_body.dart';
import 'package:mzady/features/authentication/data/models/requests/login_request_body.dart';
import 'package:mzady/features/authentication/data/models/requests/register_request_body.dart';
import 'package:mzady/features/authentication/data/models/requests/reset_password_request_body.dart';
import 'package:mzady/features/authentication/data/models/requests/verify_account_request_body.dart';
import 'package:mzady/features/authentication/data/models/requests/verify_password_request_body.dart';
import 'package:mzady/features/authentication/data/models/responses/forgot_password_response.dart';
import 'package:mzady/features/authentication/data/models/responses/login_response.dart';
import 'package:mzady/features/authentication/data/models/responses/register_response.dart';
import 'package:mzady/features/authentication/data/models/responses/reset_password_response.dart';
import 'package:mzady/features/authentication/data/models/responses/verify_account_response.dart';
import 'package:mzady/features/authentication/data/models/responses/verify_password_response.dart';
import 'package:retrofit/retrofit.dart';

part 'authentication_api.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class AuthenticationApi {
  factory AuthenticationApi(Dio dio, {String baseUrl}) = _AuthenticationApi;

  @POST(ApiConstants.login)
  Future<BaseResponse<LoginResponse>> login({
    @Body() required LoginRequestBody body,
  });

  @POST(ApiConstants.register)
  Future<BaseResponse<RegisterResponse>> register({
    @Body() required RegisterRequestBody body,
  });

  @POST(ApiConstants.verifyAccount)
  Future<BaseResponse<VerifyAccountResponse>> verifyAccount({
    @Body() required VerifyAccountRequestBody body,
    @Header('Authorization') required String token,
  });

  @POST(ApiConstants.resendOtp)
  Future<BaseResponse<dynamic>> resendOtp({
    @Header('Authorization') required String token,
  });

  @POST(ApiConstants.forgotPassword)
  Future<BaseResponse<ForgotPasswordResponse>> forgotPassword({
    @Body() required ForgotPasswordRequestBody body,
  });

  @POST(ApiConstants.verifyPassword)
  Future<BaseResponse<VerifyPasswordResponse>> verifyPassword({
    @Body() required VerifyPasswordRequestBody body,
    @Header('Authorization') required String token,
  });

  @POST(ApiConstants.resetPassword)
  Future<BaseResponse<ResetPasswordResponse>> resetPassword({
    @Body() required ResetPasswordRequestBody body,
    @Header('Authorization') required String token,
  });
}
