import 'package:flutter/material.dart';

class ChangePasswordFormManager {
  final GlobalKey<FormState> changePasswordFormKey = GlobalKey<FormState>();
  final TextEditingController currentPasswordController =
      TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmNewPasswordController =
      TextEditingController();
}
