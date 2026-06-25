import 'package:json_annotation/json_annotation.dart';
import 'package:mzady/features/authentication/domain/use_cases/params/verify_account_param.dart';

part 'verify_account_request_body.g.dart';

@JsonSerializable(includeIfNull: false)
class VerifyAccountRequestBody {
  const VerifyAccountRequestBody({required this.otp});

  final String otp;

  Map<String, dynamic> toJson() => _$VerifyAccountRequestBodyToJson(this);

  factory VerifyAccountRequestBody.toParam(VerifyAccountParam param) {
    return VerifyAccountRequestBody(otp: param.otp);
  }
}
