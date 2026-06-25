import 'package:mzady/features/profile/domain/entities/address_entity.dart';

class UserEntity {
  final String id, name, userName, email, phone, gender, role;
  final String? profileImage, bio;
  final List<AddressEntity> addresses;

  const UserEntity({
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
}
