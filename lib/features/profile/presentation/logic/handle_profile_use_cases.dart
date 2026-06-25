import 'package:mzady/features/profile/domain/use_cases/add_address_use_case.dart';
import 'package:mzady/features/profile/domain/use_cases/change_password_use_case.dart';
import 'package:mzady/features/profile/domain/use_cases/delete_address_use_case.dart';
import 'package:mzady/features/profile/domain/use_cases/get_profile_use_case.dart';
import 'package:mzady/features/profile/domain/use_cases/set_default_address_use_case.dart';
import 'package:mzady/features/profile/domain/use_cases/update_profile_use_case.dart';

class HandleProfileUseCases {
  final GetProfileUseCase getProfileUseCase;
  final UpdateProfileUseCase updateProfileUseCase;
  final ChangePasswordUseCase changePasswordUseCase;
  final AddAddressUseCase addAddressUseCase;
  final DeleteAddressUseCase deleteAddressUseCase;
  final SetDefaultAddressUseCase setDefaultAddressUseCase;

  const HandleProfileUseCases({
    required this.getProfileUseCase,
    required this.updateProfileUseCase,
    required this.changePasswordUseCase,
    required this.addAddressUseCase,
    required this.deleteAddressUseCase,
    required this.setDefaultAddressUseCase,
  });
}
