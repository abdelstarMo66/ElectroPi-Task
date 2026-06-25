import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mzady/features/profile/domain/entities/user_entity.dart';

part 'profile_states.freezed.dart';

@freezed
abstract class ProfileStates with _$ProfileStates {
  const factory ProfileStates.initial() = Initial;

  const factory ProfileStates.loading() = Loading;

  const factory ProfileStates.loadingProfile() = LoadingProfile;

  const factory ProfileStates.successProfile(UserEntity user) = SuccessProfile;

  const factory ProfileStates.errorProfile(String error) = ErrorProfile;

  const factory ProfileStates.loadingUpdateProfile() = LoadingUpdateProfile;

  const factory ProfileStates.successUpdateProfile(UserEntity user) =
      SuccessUpdateProfile;

  const factory ProfileStates.errorUpdateProfile(String error) =
      ErrorUpdateProfile;

  const factory ProfileStates.loadingChangePassword() = LoadingChangePassword;

  const factory ProfileStates.successChangePassword() = SuccessChangePassword;

  const factory ProfileStates.errorChangePassword(String error) =
      ErrorChangePassword;

  const factory ProfileStates.loadingAddAddress() = LoadingAddAddress;

  const factory ProfileStates.successAddAddress(UserEntity user) =
      SuccessAddAddress;

  const factory ProfileStates.errorAddAddress(String error) = ErrorAddAddress;

  const factory ProfileStates.loadingDeleteAddress() = LoadingDeleteAddress;

  const factory ProfileStates.successDeleteAddress(UserEntity user) =
      SuccessDeleteAddress;

  const factory ProfileStates.errorDeleteAddress(String error) =
      ErrorDeleteAddress;

  const factory ProfileStates.loadingSetAddressAsDefault() =
      LoadingSetAddressAsDefault;

  const factory ProfileStates.successSetAddressAsDefault(UserEntity user) =
      SuccessSetAddressAsDefault;

  const factory ProfileStates.errorSetAddressAsDefault(String error) =
      ErrorSetAddressAsDefault;
}
