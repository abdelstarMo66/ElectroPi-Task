import 'package:json_annotation/json_annotation.dart';
import 'package:mzady/features/profile/domain/entities/address_entity.dart';
import 'package:mzady/features/profile/domain/entities/user_entity.dart';

part 'profile_response.g.dart';

@JsonSerializable(includeIfNull: true)
class ProfileData {
  final String id, name, userName, email, phone, gender, role;
  final String? profileImage, bio;
  final List<AddressData> addresses;

  const ProfileData({
    required this.id,
    required this.name,
    required this.userName,
    required this.email,
    required this.phone,
    required this.gender,
    required this.role,
    required this.addresses,
    required this.profileImage,
    required this.bio,
  });

  factory ProfileData.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataFromJson(json);

  UserEntity toEntity() => UserEntity(
    id: id,
    name: name,
    userName: userName,
    email: email,
    bio: bio,
    profileImage: profileImage,
    phone: phone,
    gender: gender,
    role: role,
    addresses: addresses.map((e) => e.toEntity()).toList(),
  );
}

@JsonSerializable()
class AddressData {
  final String id,
      label,
      phone,
      country,
      state,
      city,
      street,
      building,
      apartment;
  final bool isDefault;

  const AddressData({
    required this.id,
    required this.label,
    required this.phone,
    required this.country,
    required this.state,
    required this.city,
    required this.street,
    required this.building,
    required this.apartment,
    required this.isDefault,
  });

  factory AddressData.fromJson(Map<String, dynamic> json) =>
      _$AddressDataFromJson(json);

  AddressEntity toEntity() => AddressEntity(
    id: id,
    label: label,
    phone: phone,
    country: country,
    state: state,
    city: city,
    street: street,
    building: building,
    apartment: apartment,
    isDefault: isDefault,
  );
}
