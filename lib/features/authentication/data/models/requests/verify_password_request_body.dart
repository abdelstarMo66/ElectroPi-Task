import 'package:json_annotation/json_annotation.dart';
import 'package:mzady/features/authentication/domain/use_cases/params/verify_password_param.dart';

part 'verify_password_request_body.g.dart';

@JsonSerializable()
class VerifyPasswordRequestBody {
  const VerifyPasswordRequestBody({required this.otp});

  final String otp;

  Map<String, dynamic> toJson() => _$VerifyPasswordRequestBodyToJson(this);

  factory VerifyPasswordRequestBody.toParam(VerifyPasswordParam param) {
    return VerifyPasswordRequestBody(otp: param.otp);
  }
}
