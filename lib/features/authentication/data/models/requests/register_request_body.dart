import 'package:json_annotation/json_annotation.dart';
import 'package:mzady/features/authentication/domain/use_cases/params/register_param.dart';

part 'register_request_body.g.dart';

@JsonSerializable(includeIfNull: false)
class RegisterRequestBody {
  const RegisterRequestBody({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.gender,
  });

  final String name;
  final String email;
  final String password;
  final String phone;
  final String gender;

  Map<String, dynamic> toJson() => _$RegisterRequestBodyToJson(this);

  factory RegisterRequestBody.toParam(RegisterParam param) {
    return RegisterRequestBody(
      name: param.name,
      email: param.email,
      password: param.password,
      phone: param.phone,
      gender: param.gender,
    );
  }
}
