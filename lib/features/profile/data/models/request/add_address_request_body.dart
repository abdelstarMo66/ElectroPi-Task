import 'package:json_annotation/json_annotation.dart';
import 'package:mzady/features/profile/domain/use_cases/params/add_address_param.dart';

part 'add_address_request_body.g.dart';

@JsonSerializable()
class AddAddressRequestBody {
  final String label,
      fullName,
      phone,
      country,
      state,
      city,
      street,
      building,
      apartment,
      postalCode;
  final double latitude, longitude;
  final bool isDefault;

  const AddAddressRequestBody({
    required this.label,
    required this.fullName,
    required this.phone,
    required this.country,
    required this.state,
    required this.city,
    required this.street,
    required this.building,
    required this.apartment,
    required this.postalCode,
    required this.latitude,
    required this.longitude,
    required this.isDefault,
  });

  Map<String, dynamic> toJson() => _$AddAddressRequestBodyToJson(this);

  factory AddAddressRequestBody.toParam(AddAddressParam param) {
    return AddAddressRequestBody(
      label: param.label,
      fullName: param.fullName,
      phone: param.phone,
      country: param.country,
      state: param.state,
      city: param.city,
      street: param.street,
      building: param.building,
      apartment: param.apartment,
      postalCode: param.postalCode,
      latitude: param.latitude,
      longitude: param.longitude,
      isDefault: param.isDefault,
    );
  }
}
