class AddAddressParam {
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

  const AddAddressParam({
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
}
