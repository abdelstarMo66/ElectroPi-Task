import 'api_error_handler.dart';
import 'api_result.dart';

abstract final class ApiConstants {
  static const String apiBaseUrl =
      'https://clump-nutty-dealt.ngrok-free.dev/api/v1/';

  // authentication
  static const login = 'users/auth/login';
  static const register = 'users/auth/register';
  static const verifyAccount = 'users/auth/verify-account';
  static const resendOtp = 'users/auth/resend-otp';
  static const forgotPassword = 'users/auth/forgot-password';
  static const verifyPassword = 'users/auth/verify-user';
  static const resetPassword = 'users/auth/reset-password';

  // home

  // profile
  static const profile = 'users/me';
  static const updateProfileImage = 'users/me/profile-image';
  static const changePassword = 'users/me/change-password';
  static const address = 'users/me/address/:id';
  static const addAddress = 'users/me/address';
  static const subscribeAccount = 'users/store/subscribe';
  static const store = 'users/store';

  // order
}

abstract final class ApiErrors {
  static const String badRequestError = 'badRequestError';
  static const String noContent = 'noContent';
  static const String forbiddenError = 'forbiddenError';
  static const String unauthorizedError = 'unauthorizedError';
  static const String notFoundError = 'notFoundError';
  static const String conflictError = 'conflictError';
  static const String internalServerError = 'internalServerError';
  static const String unknownError = 'unknownError';
  static const String timeoutError = 'timeoutError';
  static const String defaultError = 'defaultError';
  static const String cacheError = 'cacheError';
  static const String noInternetError = 'noInternetError';
  static const String loadingMessage = 'loading_message';
  static const String retryAgainMessage = 'retry_again_message';
  static const String ok = 'Ok';
}

class NetworkMethods {
  static Future<ApiResult<T>> safeApiCall<T>(
    Future<T> Function() apiCall,
  ) async {
    try {
      final response = await apiCall();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
