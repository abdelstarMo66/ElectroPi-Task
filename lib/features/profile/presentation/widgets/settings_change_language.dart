import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';

import '../../../../../app/cubit/app_cubit.dart';
import '../../../../../app/cubit/app_states.dart';
import '../../../../../core/themes/color_manager.dart';
import '../../../../../core/widgets/custom_text.dart';
import '../../../../../translations/locale_keys.g.dart';
import 'settings_default_item.dart';

class SettingsChangeLanguage extends StatelessWidget {
  const SettingsChangeLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsDefaultItem(
      title: LocaleKeys.settings_app_language_label,
      icon: AssetsManager.icLanguagesWorld,
      onTap: () {
        showModalBottomSheet(
          context: context,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          ),
          builder: (context) {
            return BlocConsumer<AppCubit, AppStates>(
              listener: (context, state) {
                if (state is SuccessChangeLanguage) {
                  context.pop();
                }
              },
              builder: (context, state) {
                final AppCubit cubit = context.read<AppCubit>();
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 24,
                    horizontal: 16,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 40,
                        height: 4,
                        decoration: BoxDecoration(
                          color: context.colorScheme.surfaceContainerLow
                              .withValues(alpha: AppSize.op0_3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      AppSize.s20.verticalSpace,
                      const CustomText(
                        textKey: LocaleKeys.settings_app_language_label,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      AppSize.s20.verticalSpace,

                      _buildLanguageItem(
                        context,
                        title: 'العربية (المصرية)',
                        locale: const Locale('ar'),
                        isSelected: context.locale.languageCode == 'ar',
                        onTap: () =>
                            cubit.changeLanguage(context, const Locale('ar')),
                      ),

                      AppSize.s12.verticalSpace,

                      _buildLanguageItem(
                        context,
                        title: 'English',
                        locale: const Locale('en'),
                        isSelected: context.locale.languageCode == 'en',
                        onTap: () =>
                            cubit.changeLanguage(context, const Locale('en')),
                      ),

                      AppSize.s20.verticalSpace,
                    ],
                  ),
                );
              },
            );
          },
        );
      },
    );
  }

  Widget _buildLanguageItem(
    BuildContext context, {
    required String title,
    required Locale locale,
    required bool isSelected,
    required VoidCallback onTap, // ضفنا الـ Callback هنا
  }) {
    return InkWell(
      onTap: () {
        onTap(); // نادى الميثود اللي في الكيوبيت
        context.pop(); // قفل الـ Sheet (باستخدام GoRouter)
      },
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected
                ? context.colorScheme.primary
                : context.colorScheme.surfaceContainerLow.withValues(
                    alpha: AppSize.op0_2,
                  ),
            width: 1.5,
          ),
          color: isSelected
              ? context.colorScheme.primary.withValues(alpha: AppSize.op0_05)
              : AppColors.transparent,
        ),
        child: Row(
          children: [
            CustomText(
              textKey: title,
              translateText: false,
              style: TextStyle(
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                color: isSelected ? context.colorScheme.primary : null,
              ),
            ),
            const Spacer(),
            if (isSelected)
              Icon(
                Icons.check_circle_rounded,
                color: context.colorScheme.primary,
              )
            else
              Icon(
                Icons.circle_outlined,
                color: context.colorScheme.surfaceContainerLow,
              ),
          ],
        ),
      ),
    );
  }
}
