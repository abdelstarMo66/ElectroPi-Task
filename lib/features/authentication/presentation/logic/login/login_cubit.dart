import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mzady/core/services/remote/api_result.dart';
import 'package:mzady/features/authentication/domain/use_cases/login_use_case.dart';
import 'package:mzady/features/authentication/domain/use_cases/params/login_param.dart';
import 'package:mzady/features/authentication/presentation/logic/login/login_states.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit(this._loginUseCase) : super(const LoginStates.initial());

  final LoginUseCase _loginUseCase;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  bool obscurePassword = true;
  bool rememberMe = false;

  void emitRememberMe() {
    rememberMe = !rememberMe;
    emit(LoginStates.rememberMeChangeState(rememberMe));
  }

  void emitVisibilityPassword() {
    obscurePassword = !obscurePassword;
    emit(LoginStates.visibilityPasswordState(obscurePassword));
  }

  Future<void> emitLoginStates() async {
    emit(const LoginStates.loadingLogin());

    final response = await _loginUseCase.execute(
      body: LoginParam(
        email: emailController.text,
        password: passwordController.text,
      ),
    );

    response.when(
      success: (data) {
        emit(const LoginStates.successLogin());
      },
      failure: (errorHandler) {
        emit(LoginStates.errorLogin(errorHandler.message));
      },
    );
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
