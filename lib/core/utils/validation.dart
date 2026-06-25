import 'extensions.dart';

class Validation {
  static String? validateEmail(String? email) {
    if (email.isNullOrEmpty || !email.isValidEmail) {
      return 'Please enter valid email';
    }
    return null;
  }

  static String? validatePassword(String? password) {
    if (password.isNullOrEmpty) {
      return 'Please Enter a valid password';
    } else if (password!.length < 8) {
      return 'Password too short, minimum 8 characters';
    } else if (!password.isValidPassword) {
      return 'Please Enter a strong password';
    }
    return null;
  }

  static String? validateName(String? name) {
    if (name.isNullOrEmpty) {
      return 'Please enter your name';
    } else if (name!.length < 3) {
      return 'Name too short';
    }
    return null;
  }

  static String? validatePhone(String? phone) {
    if (phone.isNullOrEmpty) {
      return 'Please enter your phone number';
    } else if (!phone.isValidPhone) {
      return 'Please enter a valid phone number';
    }
    return null;
  }

  static String? validateConfirmPassword(
    String? confirmPassword,
    String? originalPassword,
  ) {
    if (confirmPassword.isNullOrEmpty) {
      return 'Please confirm your password';
    } else if (confirmPassword != originalPassword) {
      return 'Passwords do not match';
    }
    return null;
  }

  static String? validateOtp(String? otp) {
    if (otp.isNullOrEmpty) {
      return 'Please enter the OTP';
    } else if (otp!.length != 4) {
      return 'OTP must be 4 digits';
    }
    return null;
  }
}
