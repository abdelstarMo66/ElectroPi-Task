import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  const ApiErrorModel({
    required this.status,
    required this.message,
    required this.statusCode,
  });

  final String message;
  final bool status;
  final int statusCode;

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}
