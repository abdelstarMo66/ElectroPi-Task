import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mzady/core/services/remote/api_result.dart';
import 'package:mzady/features/profile/domain/entities/user_entity.dart';
import 'package:mzady/features/profile/domain/use_cases/params/add_address_param.dart';
import 'package:mzady/features/profile/domain/use_cases/params/change_password_param.dart';
import 'package:mzady/features/profile/domain/use_cases/params/update_profile_param.dart';
import 'package:mzady/features/profile/presentation/logic/handle_profile_use_cases.dart';
import 'package:mzady/features/profile/presentation/logic/managers/address_form_manager.dart';
import 'package:mzady/features/profile/presentation/logic/managers/change_password_form_manager.dart';
import 'package:mzady/features/profile/presentation/logic/managers/profile_form_manager.dart';
import 'package:mzady/features/profile/presentation/logic/profile_states.dart';

class ProfileCubit extends Cubit<ProfileStates> {
  ProfileCubit(this.handleProfileUseCases)
    : super(const ProfileStates.initial());

  final HandleProfileUseCases handleProfileUseCases;
  final ProfileFormManager profileFormManager = ProfileFormManager();
  final ChangePasswordFormManager changePasswordFormManager =
      ChangePasswordFormManager();
  final AddressFormManager addressFormManager = AddressFormManager();

  UserEntity? user;

  Future<void> getProfile() async {
    emit(const ProfileStates.loadingProfile());

    final response = await handleProfileUseCases.getProfileUseCase.execute();

    response.when(
      success: (data) {
        user = data;
        emit(ProfileStates.successProfile(data));
      },
      failure: (errorHandler) {
        emit(ProfileStates.errorProfile(errorHandler.message));
      },
    );
  }

  Future<void> updateProfile() async {
    emit(const ProfileStates.loadingUpdateProfile());

    final response = await handleProfileUseCases.updateProfileUseCase.execute(
      body: UpdateProfileParam(
        name: profileFormManager.nameController.text,
        username: profileFormManager.usernameController.text,
        phone: profileFormManager.phoneController.text,
      ),
    );

    response.when(
      success: (data) {
        emit(ProfileStates.successUpdateProfile(data));
      },
      failure: (errorHandler) {
        emit(ProfileStates.errorUpdateProfile(errorHandler.message));
      },
    );
  }

  Future<void> changePassword() async {
    emit(const ProfileStates.loadingChangePassword());
    final response = await handleProfileUseCases.changePasswordUseCase.execute(
      body: ChangePasswordParam(
        currentPassword:
            changePasswordFormManager.currentPasswordController.text,
        newPassword: changePasswordFormManager.newPasswordController.text,
        confirmNewPassword:
            changePasswordFormManager.confirmNewPasswordController.text,
      ),
    );
    response.when(
      success: (data) {
        emit(const ProfileStates.successChangePassword());
      },
      failure: (errorHandler) {
        emit(ProfileStates.errorChangePassword(errorHandler.message));
      },
    );
  }

  Future<void> addAddress() async {
    emit(const ProfileStates.loadingAddAddress());
    final response = await handleProfileUseCases.addAddressUseCase.execute(
      body: AddAddressParam(
        label: '_addressFormManager.labelController.text',
        fullName: '',
        phone: addressFormManager.phoneController.text,
        country: '_addressFormManager.countryController.text',
        state: '_addressFormManager.stateController.text',
        city: '_addressFormManager.cityController.text',
        street: addressFormManager.streetController.text,
        building: addressFormManager.buildingController.text,
        apartment: addressFormManager.flatController.text,
        postalCode: '',
        latitude: 0.0,
        longitude: 0.0,
        isDefault: false,
      ),
    );

    response.when(
      success: (data) {
        emit(ProfileStates.successAddAddress(data));
      },
      failure: (errorHandler) {
        emit(ProfileStates.errorAddAddress(errorHandler.message));
      },
    );
  }

  Future<void> deleteAddress(String addressId) async {
    emit(const ProfileStates.loadingDeleteAddress());
    final response = await handleProfileUseCases.deleteAddressUseCase.execute(
      addressId: addressId,
    );

    response.when(
      success: (data) {
        emit(ProfileStates.successDeleteAddress(data));
      },
      failure: (errorHandler) {
        emit(ProfileStates.errorDeleteAddress(errorHandler.message));
      },
    );
  }

  Future<void> setAddressAsDefault(String addressId) async {
    emit(const ProfileStates.loadingSetAddressAsDefault());

    final response = await handleProfileUseCases.setDefaultAddressUseCase
        .execute(addressId: addressId);

    response.when(
      success: (data) {
        emit(ProfileStates.successSetAddressAsDefault(data));
      },
      failure: (errorHandler) {
        emit(ProfileStates.errorSetAddressAsDefault(errorHandler.message));
      },
    );
  }
}
