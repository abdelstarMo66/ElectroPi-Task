class AddressEntity {
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

  const AddressEntity({
    required this.label,
    required this.phone,
    required this.country,
    required this.state,
    required this.city,
    required this.street,
    required this.building,
    required this.apartment,
    required this.isDefault,
    required this.id,
  });
}
