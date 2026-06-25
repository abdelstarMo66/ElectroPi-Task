// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileData _$ProfileDataFromJson(Map<String, dynamic> json) => ProfileData(
  id: json['id'] as String,
  name: json['name'] as String,
  userName: json['userName'] as String,
  email: json['email'] as String,
  phone: json['phone'] as String,
  gender: json['gender'] as String,
  role: json['role'] as String,
  addresses: (json['addresses'] as List<dynamic>)
      .map((e) => AddressData.fromJson(e as Map<String, dynamic>))
      .toList(),
  profileImage: json['profileImage'] as String?,
  bio: json['bio'] as String?,
);

Map<String, dynamic> _$ProfileDataToJson(ProfileData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'userName': instance.userName,
      'email': instance.email,
      'phone': instance.phone,
      'gender': instance.gender,
      'role': instance.role,
      'profileImage': instance.profileImage,
      'bio': instance.bio,
      'addresses': instance.addresses,
    };

AddressData _$AddressDataFromJson(Map<String, dynamic> json) => AddressData(
  id: json['id'] as String,
  label: json['label'] as String,
  phone: json['phone'] as String,
  country: json['country'] as String,
  state: json['state'] as String,
  city: json['city'] as String,
  street: json['street'] as String,
  building: json['building'] as String,
  apartment: json['apartment'] as String,
  isDefault: json['isDefault'] as bool,
);

Map<String, dynamic> _$AddressDataToJson(AddressData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'phone': instance.phone,
      'country': instance.country,
      'state': instance.state,
      'city': instance.city,
      'street': instance.street,
      'building': instance.building,
      'apartment': instance.apartment,
      'isDefault': instance.isDefault,
    };
