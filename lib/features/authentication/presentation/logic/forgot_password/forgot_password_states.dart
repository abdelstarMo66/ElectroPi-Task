import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_states.freezed.dart';

@freezed
class ForgotPasswordStates with _$ForgotPasswordStates {
  const ForgotPasswordStates._();

  const factory ForgotPasswordStates.initial() = Initial;

  const factory ForgotPasswordStates.visibilityPasswordState(
    bool obscurePassword,
  ) = VisibilityPasswordState;

  const factory ForgotPasswordStates.loadingForgotPassword() =
      LoadingForgotPassword;

  const factory ForgotPasswordStates.successForgotPassword() =
      SuccessForgotPassword;

  const factory ForgotPasswordStates.errorForgotPassword(String errorMessage) =
      ErrorForgotPassword;

  const factory ForgotPasswordStates.loadingVerifyPassword() =
      LoadingVerifyPassword;

  const factory ForgotPasswordStates.successVerifyPassword() =
      SuccessVerifyPassword;

  const factory ForgotPasswordStates.errorVerifyPassword(String errorMessage) =
      ErrorVerifyPassword;

  const factory ForgotPasswordStates.loadingResetPassword() =
      LoadingResetPassword;

  const factory ForgotPasswordStates.successResetPassword() =
      SuccessResetPassword;

  const factory ForgotPasswordStates.errorResetPassword(String errorMessage) =
      ErrorResetPassword;

  const factory ForgotPasswordStates.loadingResendCode() = LoadingResendCode;

  const factory ForgotPasswordStates.successResendCode() = SuccessResendCode;

  const factory ForgotPasswordStates.errorResendCode(String errorMessage) =
      ErrorResendCode;
}
