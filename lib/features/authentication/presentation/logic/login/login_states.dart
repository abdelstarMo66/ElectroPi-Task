import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_states.freezed.dart';

@freezed
class LoginStates with _$LoginStates {
  const LoginStates._();

  const factory LoginStates.initial() = Initial;

  const factory LoginStates.visibilityPasswordState(bool obscurePassword) =
      VisibilityPasswordState;

  const factory LoginStates.rememberMeChangeState(bool rememberMe) =
      RememberMeChangeState;

  const factory LoginStates.loadingLogin() = LoadingLogin;

  const factory LoginStates.successLogin() = SuccessLogin;

  const factory LoginStates.errorLogin(String errorMessage) = ErrorLogin;
}
