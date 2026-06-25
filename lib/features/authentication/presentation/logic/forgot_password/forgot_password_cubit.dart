import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mzady/core/services/remote/api_result.dart';
import 'package:mzady/features/authentication/domain/use_cases/forgot_password_use_case.dart';
import 'package:mzady/features/authentication/domain/use_cases/params/forgot_password_param.dart';
import 'package:mzady/features/authentication/domain/use_cases/params/reset_password_param.dart';
import 'package:mzady/features/authentication/domain/use_cases/params/verify_password_param.dart';
import 'package:mzady/features/authentication/domain/use_cases/resend_otp_use_case.dart';
import 'package:mzady/features/authentication/domain/use_cases/reset_password_use_case.dart';
import 'package:mzady/features/authentication/domain/use_cases/verify_password_use_case.dart';
import 'package:mzady/features/authentication/presentation/logic/forgot_password/forgot_password_states.dart';
import 'package:mzady/features/authentication/presentation/logic/providers/resend_code_provider.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordStates> implements ResendCodeProvider{
  ForgotPasswordCubit(
    this._forgotPasswordUseCase,
    this._verifyPasswordUseCase,
    this._resetPasswordUseCase,
    this._resendOtpUseCase,
  ) : super(const ForgotPasswordStates.initial());

  final ForgotPasswordUseCase _forgotPasswordUseCase;
  final VerifyPasswordUseCase _verifyPasswordUseCase;
  final ResetPasswordUseCase _resetPasswordUseCase;
  final ResendOtpUseCase _resendOtpUseCase;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController otpController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final GlobalKey<FormState> forgotPasswordFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> resetPasswordFormKey = GlobalKey<FormState>();
  bool obscurePassword = true;
  bool obscureConfirmPassword = true;

  void emitVisibilityPassword(bool password) {
    password = !password;
    emit(ForgotPasswordStates.visibilityPasswordState(password));
  }

  Future<void> emitForgotPasswordStates() async {
    emit(const ForgotPasswordStates.loadingForgotPassword());

    final response = await _forgotPasswordUseCase.execute(
      body: ForgotPasswordParam(email: emailController.text),
    );

    response.when(
      success: (data) {
        emit(const ForgotPasswordStates.successForgotPassword());
      },
      failure: (errorHandler) {
        emit(ForgotPasswordStates.errorForgotPassword(errorHandler.message));
      },
    );
  }

  Future<void> emitVerifyPasswordStates() async {
    emit(const ForgotPasswordStates.loadingVerifyPassword());

    final response = await _verifyPasswordUseCase.execute(
      body: VerifyPasswordParam(otp: otpController.text),
    );

    response.when(
      success: (data) {
        emit(const ForgotPasswordStates.successVerifyPassword());
      },
      failure: (errorHandler) {
        emit(ForgotPasswordStates.errorVerifyPassword(errorHandler.message));
      },
    );
  }

  Future<void> emitResetPasswordStates() async {
    emit(const ForgotPasswordStates.loadingResetPassword());

    final response = await _resetPasswordUseCase.execute(
      body: ResetPasswordParam(
        password: passwordController.text,
        confirmPassword: confirmPasswordController.text,
      ),
    );

    response.when(
      success: (data) {
        emit(const ForgotPasswordStates.successResetPassword());
      },
      failure: (errorHandler) {
        emit(ForgotPasswordStates.errorResetPassword(errorHandler.message));
      },
    );
  }

  Timer? _timer;
  int _start = 59;
  bool _canResend = false;

  final _timerController = StreamController<int>.broadcast();

  @override
  Stream<int> get timerStream => _timerController.stream;

  @override
  bool get canResend => _canResend;

  void startTimer() {
    _canResend = false;
    _start = 59;
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_start == 0) {
        _canResend = true;
        _timerController.add(0);
        timer.cancel();
      } else {
        _start--;
        _timerController.add(_start);
      }
    });
  }

  @override
  Future<void> emitResendOtpStates() async {
    emit(const ForgotPasswordStates.loadingResendCode());

    final response = await _resendOtpUseCase.execute();

    response.when(
      success: (data) {
        emit(const ForgotPasswordStates.successResendCode());
      },
      failure: (errorHandler) {
        emit(ForgotPasswordStates.errorResendCode(errorHandler.message));
      },
    );
  }

  @override
  Future<void> close() {
    emailController.dispose();
    otpController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    _timer?.cancel();
    _timerController.close();

    return super.close();
  }
}
