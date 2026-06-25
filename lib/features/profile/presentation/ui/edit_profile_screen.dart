import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';
import 'package:mzady/core/widgets/custom_app_bar.dart';
import 'package:mzady/core/widgets/custom_network_image.dart';
import 'package:mzady/core/widgets/custom_text.dart';
import 'package:mzady/core/widgets/custom_text_field.dart';
import 'package:mzady/features/profile/presentation/logic/profile_cubit.dart';
import 'package:mzady/features/profile/presentation/widgets/build_label.dart';
import 'package:mzady/features/profile/presentation/widgets/build_section_header.dart';
import 'package:mzady/translations/locale_keys.g.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProfileCubit cubit = context.read<ProfileCubit>();
    cubit.profileFormManager.phoneController.text = cubit.user?.phone ?? '';
    cubit.profileFormManager.emailController.text = cubit.user?.email ?? '';
    cubit.profileFormManager.nameController.text = cubit.user?.name ?? '';
    cubit.profileFormManager.usernameController.text =
        cubit.user?.userName ?? '';
    cubit.profileFormManager.bioController.text = cubit.user?.bio ?? '';

    return Scaffold(
      appBar: CustomAppBar(
        title: const CustomText(textKey: LocaleKeys.edit_profile_appbar_header),
        actions: [
          TextButton(
            onPressed: () {},
            child: CustomText(
              textKey: LocaleKeys.edit_profile_save_btn,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: context.colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Form(
                key: cubit.profileFormManager.profileFormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppSize.s24.verticalSpace,
                    Center(
                      child: Stack(
                        children: [
                          CustomNetworkImage(
                            imageUrl:
                                'https://img.freepik.com/premium-vector/young-man-standing-with-plant-vector-illustration-flat-cartoon-style_101266-39205.jpg?w=1480',
                            width: 130.0,
                            height: 130.0,
                            isCircle: true,
                            borderWidth: 2.0,
                            borderColor: context.colorScheme.primary,
                          ),
                          Positioned(
                            bottom: 0,
                            right: 4,
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: context.colorScheme.primary,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: context.colorScheme.surface,
                                    width: 3,
                                  ),
                                ),
                                child: AppSvgIcon(
                                  iconName: AssetsManager.icCamera,
                                  color: context.colorScheme.surface,
                                  size: AppSize.i18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    AppSize.s32.verticalSpace,

                    const BuildSectionHeader(
                      title: LocaleKeys.edit_profile_public_info_header,
                    ),
                    AppSize.s16.verticalSpace,
                    const BuildLabel(
                      title: LocaleKeys.edit_profile_full_name_label,
                    ),
                    CustomTextField(
                      controller: cubit.profileFormManager.nameController,
                      hintText: LocaleKeys.edit_profile_full_name_hint,
                      prefixIcon: const AppSvgIcon(
                        iconName: AssetsManager.icUser,
                        size: 20.0,
                      ),
                    ),

                    AppSize.s16.verticalSpace,
                    const BuildLabel(
                      title: LocaleKeys.edit_profile_username_label,
                    ),
                    CustomTextField(
                      controller: cubit.profileFormManager.usernameController,
                      hintText: LocaleKeys.edit_profile_username_hint,
                      prefixIcon: const AppSvgIcon(
                        iconName: AssetsManager.icUsername,
                        size: 20.0,
                      ),
                    ),

                    AppSize.s16.verticalSpace,
                    const BuildLabel(title: LocaleKeys.edit_profile_bio_label),
                    CustomTextField(
                      controller: cubit.profileFormManager.bioController,
                      hintText: LocaleKeys.edit_profile_bio_hint,
                      maxLines: 3,
                      prefixIcon: const AppSvgIcon(
                        iconName: AssetsManager.icBio,
                        size: 20.0,
                      ),
                    ),

                    AppSize.s32.verticalSpace,

                    const BuildSectionHeader(
                      title: LocaleKeys.edit_profile_private_info_header,
                    ),
                    AppSize.s16.verticalSpace,
                    const BuildLabel(
                      title: LocaleKeys.edit_profile_email_label,
                    ),
                    CustomTextField(
                      controller: cubit.profileFormManager.emailController,
                      hintText: LocaleKeys.edit_profile_email_hint,
                      keyboardType: TextInputType.emailAddress,
                      enabled: false,
                      prefixIcon: const AppSvgIcon(
                        iconName: AssetsManager.icEmail,
                        size: 20.0,
                      ),
                    ),

                    AppSize.s16.verticalSpace,
                    const BuildLabel(
                      title: LocaleKeys.edit_profile_phone_label,
                    ),
                    CustomTextField(
                      controller: cubit.profileFormManager.phoneController,
                      hintText: LocaleKeys.edit_profile_phone_hint,
                      keyboardType: TextInputType.phone,
                      prefixIcon: const AppSvgIcon(
                        iconName: AssetsManager.icPhone,
                        size: 20.0,
                      ),
                    ),

                    AppSize.s40.verticalSpace,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
