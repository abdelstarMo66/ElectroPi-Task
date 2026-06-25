import 'package:json_annotation/json_annotation.dart';

part 'verify_account_response.g.dart';

@JsonSerializable()
class VerifyAccountResponse {
  const VerifyAccountResponse({required this.token});

  factory VerifyAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyAccountResponseFromJson(json);

  final String token;
}
