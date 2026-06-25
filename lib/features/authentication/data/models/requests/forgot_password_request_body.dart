import 'package:json_annotation/json_annotation.dart';
import 'package:mzady/features/authentication/domain/use_cases/params/forgot_password_param.dart';

part 'forgot_password_request_body.g.dart';

@JsonSerializable(includeIfNull: false)
class ForgotPasswordRequestBody {
  const ForgotPasswordRequestBody({required this.email});

  final String email;

  Map<String, dynamic> toJson() => _$ForgotPasswordRequestBodyToJson(this);

  factory ForgotPasswordRequestBody.toParam(ForgotPasswordParam param) {
    return ForgotPasswordRequestBody(email: param.email);
  }
}
