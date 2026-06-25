import 'package:json_annotation/json_annotation.dart';
import 'package:mzady/features/authentication/domain/use_cases/params/reset_password_param.dart';

part 'reset_password_request_body.g.dart';

@JsonSerializable(includeIfNull: false)
class ResetPasswordRequestBody {
  const ResetPasswordRequestBody({
    required this.password,
    required this.confirmPassword,
  });

  final String password;
  final String confirmPassword;

  Map<String, dynamic> toJson() => _$ResetPasswordRequestBodyToJson(this);

  factory ResetPasswordRequestBody.toParam(ResetPasswordParam param) {
    return ResetPasswordRequestBody(
      password: param.password,
      confirmPassword: param.confirmPassword,
    );
  }
}
