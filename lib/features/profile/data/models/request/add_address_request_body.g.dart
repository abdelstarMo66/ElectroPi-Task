// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_address_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddAddressRequestBody _$AddAddressRequestBodyFromJson(
  Map<String, dynamic> json,
) => AddAddressRequestBody(
  label: json['label'] as String,
  fullName: json['fullName'] as String,
  phone: json['phone'] as String,
  country: json['country'] as String,
  state: json['state'] as String,
  city: json['city'] as String,
  street: json['street'] as String,
  building: json['building'] as String,
  apartment: json['apartment'] as String,
  postalCode: json['postalCode'] as String,
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
  isDefault: json['isDefault'] as bool,
);

Map<String, dynamic> _$AddAddressRequestBodyToJson(
  AddAddressRequestBody instance,
) => <String, dynamic>{
  'label': instance.label,
  'fullName': instance.fullName,
  'phone': instance.phone,
  'country': instance.country,
  'state': instance.state,
  'city': instance.city,
  'street': instance.street,
  'building': instance.building,
  'apartment': instance.apartment,
  'postalCode': instance.postalCode,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'isDefault': instance.isDefault,
};
