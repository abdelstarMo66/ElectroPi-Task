import 'package:mzady/core/services/local/secure_utils.dart';
import 'package:mzady/core/services/remote/api_result.dart';
import 'package:mzady/core/services/remote/base_response.dart';
import 'package:mzady/core/services/remote/network_utils.dart';
import 'package:mzady/features/authentication/data/api/authentication_api.dart';
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
import 'package:mzady/features/authentication/domain/repo/authentication_repo.dart';
import 'package:mzady/features/authentication/domain/use_cases/params/forgot_password_param.dart';
import 'package:mzady/features/authentication/domain/use_cases/params/login_param.dart';
import 'package:mzady/features/authentication/domain/use_cases/params/register_param.dart';
import 'package:mzady/features/authentication/domain/use_cases/params/reset_password_param.dart';
import 'package:mzady/features/authentication/domain/use_cases/params/verify_account_param.dart';
import 'package:mzady/features/authentication/domain/use_cases/params/verify_password_param.dart';

class AuthenticationRepoImpl implements AuthenticationRepo {
  const AuthenticationRepoImpl(this._authenticationApi, this._secureMethods);

  final AuthenticationApi _authenticationApi;
  final SecureMethods _secureMethods;

  @override
  Future<ApiResult<void>> login(LoginParam body) {
    return NetworkMethods.safeApiCall(() async {
      final BaseResponse<LoginResponse> response = await _authenticationApi
          .login(body: LoginRequestBody.toParam(body));

      await _secureMethods.saveToken(response.data!.token);
      return;
    });
  }

  @override
  Future<ApiResult<void>> register(RegisterParam body) {
    return NetworkMethods.safeApiCall(() async {
      final BaseResponse<RegisterResponse> response = await _authenticationApi
          .register(body: RegisterRequestBody.toParam(body));

      await _secureMethods.saveToken(response.data!.token);
      return;
    });
  }

  @override
  Future<ApiResult<void>> verifyAccount(VerifyAccountParam body) {
    return NetworkMethods.safeApiCall(() async {
      final BaseResponse<VerifyAccountResponse> response =
          await _authenticationApi.verifyAccount(
            body: VerifyAccountRequestBody.toParam(body),
            token: await _secureMethods.getToken(),
          );

      await _secureMethods.saveToken(response.data!.token);
      return;
    });
  }

  @override
  Future<ApiResult<void>> forgotPassword(ForgotPasswordParam body) {
    return NetworkMethods.safeApiCall(() async {
      final BaseResponse<ForgotPasswordResponse> response =
          await _authenticationApi.forgotPassword(
            body: ForgotPasswordRequestBody.toParam(body),
          );

      await _secureMethods.saveToken(response.data!.token);
      return;
    });
  }

  @override
  Future<ApiResult<void>> verifyPassword(VerifyPasswordParam body) {
    return NetworkMethods.safeApiCall(() async {
      final BaseResponse<VerifyPasswordResponse> response =
          await _authenticationApi.verifyPassword(
            body: VerifyPasswordRequestBody.toParam(body),
            token: await _secureMethods.getToken(),
          );

      await _secureMethods.saveToken(response.data!.token);
      return;
    });
  }

  @override
  Future<ApiResult<void>> resetPassword(ResetPasswordParam body) {
    return NetworkMethods.safeApiCall(() async {
      final BaseResponse<ResetPasswordResponse> response =
          await _authenticationApi.resetPassword(
            body: ResetPasswordRequestBody.toParam(body),
            token: await _secureMethods.getToken(),
          );

      await _secureMethods.saveToken(response.data!.token);
      return;
    });
  }

  @override
  Future<ApiResult<void>> resendOtp() {
    return NetworkMethods.safeApiCall(() async {
      await _authenticationApi.resendOtp(
        token: await _secureMethods.getToken(),
      );

      return;
    });
  }
}
