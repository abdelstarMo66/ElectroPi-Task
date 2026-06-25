import 'package:json_annotation/json_annotation.dart';
import 'package:mzady/features/profile/domain/use_cases/params/update_profile_param.dart';

part 'update_profile_request_body.g.dart';

@JsonSerializable()
class UpdateProfileRequestBody {
  final String? name, username, phone;

  const UpdateProfileRequestBody({this.name, this.username, this.phone});

  Map<String, dynamic> toJson() => _$UpdateProfileRequestBodyToJson(this);

  factory UpdateProfileRequestBody.toParam(UpdateProfileParam param) {
    return UpdateProfileRequestBody(
      name: param.name,
      username: param.username,
      phone: param.phone,
    );
  }
}
