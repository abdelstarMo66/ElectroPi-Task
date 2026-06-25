import 'package:json_annotation/json_annotation.dart';
import 'package:mzady/features/authentication/domain/use_cases/params/login_param.dart';

part 'login_request_body.g.dart';

@JsonSerializable(includeIfNull: false)
class LoginRequestBody {
  const LoginRequestBody({required this.email, required this.password});

  final String email;
  final String password;

  Map<String, dynamic> toJson() => _$LoginRequestBodyToJson(this);

  factory LoginRequestBody.toParam(LoginParam param) {
    return LoginRequestBody(email: param.email, password: param.password);
  }
}
