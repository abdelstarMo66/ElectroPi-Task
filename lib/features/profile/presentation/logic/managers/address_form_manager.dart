import 'package:flutter/material.dart';

class AddressFormManager {
  final GlobalKey<FormState> addressFormKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController streetController = TextEditingController();
  final TextEditingController buildingController = TextEditingController();
  final TextEditingController flatController = TextEditingController();
  final bool isDefault = false;
}
