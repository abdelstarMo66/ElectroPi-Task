import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mzady/core/services/remote/api_result.dart';
import 'package:mzady/core/utils/enums_manager.dart';
import 'package:mzady/features/authentication/domain/use_cases/params/register_param.dart';
import 'package:mzady/features/authentication/domain/use_cases/params/verify_account_param.dart';
import 'package:mzady/features/authentication/domain/use_cases/register_use_case.dart';
import 'package:mzady/features/authentication/domain/use_cases/resend_otp_use_case.dart';
import 'package:mzady/features/authentication/domain/use_cases/verify_account_use_case.dart';
import 'package:mzady/features/authentication/presentation/logic/providers/resend_code_provider.dart';
import 'package:mzady/features/authentication/presentation/logic/register/register_states.dart';

class RegisterCubit extends Cubit<RegisterStates>
    implements ResendCodeProvider {
  RegisterCubit(
    this._registerUseCase,
    this._verifyAccountUseCase,
    this._resendOtpUseCase,
  ) : super(const RegisterStates.initial());

  final RegisterUseCase _registerUseCase;
  final VerifyAccountUseCase _verifyAccountUseCase;
  final ResendOtpUseCase _resendOtpUseCase;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController otpController = TextEditingController();
  GenderEnum gender = GenderEnum.male;
  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  bool obscurePassword = true;
  bool isTermsAccepted = false;

  void emitGenderChange(GenderEnum selectedGender) {
    gender = selectedGender;
    emit(RegisterStates.genderChangeState(gender.name));
  }

  void emitTermsChange() {
    isTermsAccepted = !isTermsAccepted;
    emit(RegisterStates.termsChangeState(isTermsAccepted));
  }

  void emitVisibilityPassword() {
    obscurePassword = !obscurePassword;
    emit(RegisterStates.visibilityPasswordState(obscurePassword));
  }

  Future<void> emitRegisterStates() async {
    emit(const RegisterStates.loadingRegister());

    final response = await _registerUseCase.execute(
      body: RegisterParam(
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
        phone: phoneController.text,
        gender: gender.name.toLowerCase(),
      ),
    );

    response.when(
      success: (data) {
        emit(const RegisterStates.successRegister());
      },
      failure: (errorHandler) {
        emit(RegisterStates.errorRegister(errorHandler.message));
      },
    );
  }

  Future<void> emitVerifyAccountStates() async {
    emit(const RegisterStates.loadingVerifyAccount());

    final response = await _verifyAccountUseCase.execute(
      body: VerifyAccountParam(otp: otpController.text),
    );

    response.when(
      success: (data) {
        emit(const RegisterStates.successVerifyAccount());
      },
      failure: (errorHandler) {
        emit(RegisterStates.errorVerifyAccount(errorHandler.message));
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
    emit(const RegisterStates.loadingResendCode());

    final response = await _resendOtpUseCase.execute();

    response.when(
      success: (data) {
        startTimer();
        emit(const RegisterStates.successResendCode());
      },
      failure: (errorHandler) {
        emit(RegisterStates.errorResendCode(errorHandler.message));
      },
    );
  }

  @override
  Future<void> close() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    phoneController.dispose();
    otpController.dispose();
    _timer?.cancel();
    _timerController.close();
    return super.close();
  }
}
