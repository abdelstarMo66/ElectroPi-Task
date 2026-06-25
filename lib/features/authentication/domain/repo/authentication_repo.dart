import 'package:mzady/features/authentication/domain/use_cases/params/login_param.dart';
import 'package:mzady/features/authentication/domain/use_cases/params/register_param.dart';
import 'package:mzady/features/authentication/domain/use_cases/params/reset_password_param.dart';
import 'package:mzady/features/authentication/domain/use_cases/params/verify_account_param.dart';
import 'package:mzady/features/authentication/domain/use_cases/params/verify_password_param.dart';

import '../../../../core/services/remote/api_result.dart';
import '../use_cases/params/forgot_password_param.dart';

abstract class AuthenticationRepo {
  Future<ApiResult<void>> login(LoginParam body);

  Future<ApiResult<void>> register(RegisterParam body);

  Future<ApiResult<void>> verifyAccount(VerifyAccountParam body);

  Future<ApiResult<void>> forgotPassword(ForgotPasswordParam body);

  Future<ApiResult<void>> verifyPassword(VerifyPasswordParam body);

  Future<ApiResult<void>> resetPassword(ResetPasswordParam body);

  Future<ApiResult<void>> resendOtp();
}
