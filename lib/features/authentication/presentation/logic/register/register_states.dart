import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_states.freezed.dart';

@freezed
class RegisterStates with _$RegisterStates {
  const RegisterStates._();

  const factory RegisterStates.initial() = Initial;

  const factory RegisterStates.genderChangeState(String gender) =
      GenderChangeState;

  const factory RegisterStates.termsChangeState(bool isTermsAccepted) =
      TermsChangeState;

  const factory RegisterStates.visibilityPasswordState(bool obscurePassword) =
      VisibilityPasswordState;

  const factory RegisterStates.loadingRegister() = LoadingRegister;

  const factory RegisterStates.successRegister() = SuccessRegister;

  const factory RegisterStates.errorRegister(String errorMessage) =
      ErrorRegister;

  const factory RegisterStates.loadingVerifyAccount() = LoadingVerifyAccount;

  const factory RegisterStates.successVerifyAccount() = SuccessVerifyAccount;

  const factory RegisterStates.errorVerifyAccount(String errorMessage) =
      ErrorVerifyAccount;

  const factory RegisterStates.loadingResendCode() = LoadingResendCode;

  const factory RegisterStates.successResendCode() = SuccessResendCode;

  const factory RegisterStates.errorResendCode(String errorMessage) =
      ErrorResendCode;
}
