abstract class ResendCodeProvider {
  Future<void> emitResendOtpStates();

  Stream<int> get timerStream;

  bool get canResend;
}
