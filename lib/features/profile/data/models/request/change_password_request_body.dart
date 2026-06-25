import 'package:json_annotation/json_annotation.dart';
import 'package:mzady/features/profile/domain/use_cases/params/change_password_param.dart';

part 'change_password_request_body.g.dart';

@JsonSerializable()
class ChangePasswordRequestBody {
  final String currentPassword, newPassword, confirmNewPassword;

  const ChangePasswordRequestBody({
    required this.currentPassword,
    required this.newPassword,
    required this.confirmNewPassword,
  });

  Map<String, dynamic> toJson() => _$ChangePasswordRequestBodyToJson(this);

  factory ChangePasswordRequestBody.toParam(ChangePasswordParam param) {
    return ChangePasswordRequestBody(
      currentPassword: param.currentPassword,
      newPassword: param.newPassword,
      confirmNewPassword: param.confirmNewPassword,
    );
  }
}
