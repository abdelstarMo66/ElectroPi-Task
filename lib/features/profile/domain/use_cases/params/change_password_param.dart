class ChangePasswordParam {
  final String currentPassword, newPassword, confirmNewPassword;

  const ChangePasswordParam({
    required this.currentPassword,
    required this.newPassword,
    required this.confirmNewPassword,
  });
}
