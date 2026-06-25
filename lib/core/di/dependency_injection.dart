import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:mzady/app/cubit/app_cubit.dart';
import 'package:mzady/core/services/local/secure_storage_manager.dart';
import 'package:mzady/core/services/local/secure_utils.dart';
import 'package:mzady/core/services/remote/dio_factory.dart';
import 'package:mzady/features/authentication/data/api/authentication_api.dart';
import 'package:mzady/features/authentication/data/repo/authentication_repo_impl.dart';
import 'package:mzady/features/authentication/domain/repo/authentication_repo.dart';
import 'package:mzady/features/authentication/domain/use_cases/forgot_password_use_case.dart';
import 'package:mzady/features/authentication/domain/use_cases/login_use_case.dart';
import 'package:mzady/features/authentication/domain/use_cases/register_use_case.dart';
import 'package:mzady/features/authentication/domain/use_cases/resend_otp_use_case.dart';
import 'package:mzady/features/authentication/domain/use_cases/reset_password_use_case.dart';
import 'package:mzady/features/authentication/domain/use_cases/verify_account_use_case.dart';
import 'package:mzady/features/authentication/domain/use_cases/verify_password_use_case.dart';
import 'package:mzady/features/authentication/presentation/logic/forgot_password/forgot_password_cubit.dart';
import 'package:mzady/features/authentication/presentation/logic/login/login_cubit.dart';
import 'package:mzady/features/authentication/presentation/logic/register/register_cubit.dart';
import 'package:mzady/features/profile/data/api/profile_api.dart';
import 'package:mzady/features/profile/data/repo/profile_repo_impl.dart';
import 'package:mzady/features/profile/domain/repo/profile_repo.dart';
import 'package:mzady/features/profile/domain/use_cases/add_address_use_case.dart';
import 'package:mzady/features/profile/domain/use_cases/change_password_use_case.dart';
import 'package:mzady/features/profile/domain/use_cases/delete_address_use_case.dart';
import 'package:mzady/features/profile/domain/use_cases/get_profile_use_case.dart';
import 'package:mzady/features/profile/domain/use_cases/set_default_address_use_case.dart';
import 'package:mzady/features/profile/domain/use_cases/update_profile_use_case.dart';
import 'package:mzady/features/profile/presentation/logic/handle_profile_use_cases.dart';
import 'package:mzady/features/profile/presentation/logic/profile_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  await setupInternetConnectionChecker();
  await setupSharedPreferences();
  await setupDio();
  await setupApiServices();
  await setupRepositories();
  await setupUseCases();
  await setupCubits();
}

Future<void> setupInternetConnectionChecker() async {}

Future<void> setupSharedPreferences() async {
  const secureStorage = FlutterSecureStorage();
  getIt.registerLazySingleton<SecureStorageManager>(
    () => const SecureStorageManager(secureStorage),
  );
  getIt.registerLazySingleton<SecureMethods>(
    () => SecureMethods(getIt<SecureStorageManager>()),
  );
}

Future<void> setupDio() async {
  getIt.registerSingleton<Dio>(await DioFactory.getDio());
}

Future<void> setupApiServices() async {
  getIt.registerLazySingleton<AuthenticationApi>(
    () => AuthenticationApi(getIt<Dio>()),
  );
  getIt.registerLazySingleton<ProfileApi>(() => ProfileApi(getIt<Dio>()));
}

Future<void> setupRepositories() async {
  getIt.registerLazySingleton<AuthenticationRepo>(
    () => AuthenticationRepoImpl(
      getIt<AuthenticationApi>(),
      getIt<SecureMethods>(),
    ),
  );
  getIt.registerLazySingleton<ProfileRepo>(
    () => ProfileRepoImpl(getIt<ProfileApi>(), getIt<SecureMethods>()),
  );
}

Future<void> setupUseCases() async {
  // ---- Authentication Use Cases
  getIt.registerLazySingleton<LoginUseCase>(
    () => LoginUseCase(getIt<AuthenticationRepo>()),
  );
  getIt.registerLazySingleton<RegisterUseCase>(
    () => RegisterUseCase(getIt<AuthenticationRepo>()),
  );
  getIt.registerLazySingleton<VerifyAccountUseCase>(
    () => VerifyAccountUseCase(getIt<AuthenticationRepo>()),
  );
  getIt.registerLazySingleton<ForgotPasswordUseCase>(
    () => ForgotPasswordUseCase(getIt<AuthenticationRepo>()),
  );
  getIt.registerLazySingleton<VerifyPasswordUseCase>(
    () => VerifyPasswordUseCase(getIt<AuthenticationRepo>()),
  );
  getIt.registerLazySingleton<ResetPasswordUseCase>(
    () => ResetPasswordUseCase(getIt<AuthenticationRepo>()),
  );
  getIt.registerLazySingleton<ResendOtpUseCase>(
    () => ResendOtpUseCase(getIt<AuthenticationRepo>()),
  );
  // ---- Profile Use Cases
  getIt.registerLazySingleton<GetProfileUseCase>(
    () => GetProfileUseCase(getIt<ProfileRepo>()),
  );
  getIt.registerLazySingleton<UpdateProfileUseCase>(
    () => UpdateProfileUseCase(getIt<ProfileRepo>()),
  );
  getIt.registerLazySingleton<ChangePasswordUseCase>(
    () => ChangePasswordUseCase(getIt<ProfileRepo>()),
  );
  getIt.registerLazySingleton<AddAddressUseCase>(
    () => AddAddressUseCase(getIt<ProfileRepo>()),
  );
  getIt.registerLazySingleton<DeleteAddressUseCase>(
    () => DeleteAddressUseCase(getIt<ProfileRepo>()),
  );
  getIt.registerLazySingleton<SetDefaultAddressUseCase>(
    () => SetDefaultAddressUseCase(getIt<ProfileRepo>()),
  );
}

Future<void> setupCubits() async {
  getIt.registerLazySingleton<AppCubit>(() => AppCubit());

  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<LoginUseCase>()));
  getIt.registerFactory<RegisterCubit>(
    () => RegisterCubit(
      getIt<RegisterUseCase>(),
      getIt<VerifyAccountUseCase>(),
      getIt<ResendOtpUseCase>(),
    ),
  );
  getIt.registerFactory<ForgotPasswordCubit>(
    () => ForgotPasswordCubit(
      getIt<ForgotPasswordUseCase>(),
      getIt<VerifyPasswordUseCase>(),
      getIt<ResetPasswordUseCase>(),
      getIt<ResendOtpUseCase>(),
    ),
  );

  getIt.registerLazySingleton<ProfileCubit>(
    () => ProfileCubit(
      HandleProfileUseCases(
        addAddressUseCase: getIt<AddAddressUseCase>(),
        deleteAddressUseCase: getIt<DeleteAddressUseCase>(),
        setDefaultAddressUseCase: getIt<SetDefaultAddressUseCase>(),
        getProfileUseCase: getIt<GetProfileUseCase>(),
        updateProfileUseCase: getIt<UpdateProfileUseCase>(),
        changePasswordUseCase: getIt<ChangePasswordUseCase>(),
      ),
    ),
  );
}
