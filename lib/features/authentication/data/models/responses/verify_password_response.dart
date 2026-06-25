import 'package:json_annotation/json_annotation.dart';

part 'verify_password_response.g.dart';

@JsonSerializable()
class VerifyPasswordResponse {
  const VerifyPasswordResponse({required this.token});

  factory VerifyPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyPasswordResponseFromJson(json);

  final String token;
}
