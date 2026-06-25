import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mzady/core/routing/routes.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';
import 'package:mzady/core/widgets/custom_app_bar.dart';
import 'package:mzady/core/widgets/custom_text.dart';
import 'package:mzady/features/profile/presentation/widgets/build_logout_button.dart';
import 'package:mzady/features/profile/presentation/widgets/build_section_header.dart';
import 'package:mzady/features/profile/presentation/widgets/build_settings_group.dart';
import 'package:mzady/features/profile/presentation/widgets/settings_change_language.dart';
import 'package:mzady/features/profile/presentation/widgets/settings_change_mode_item.dart';
import 'package:mzady/features/profile/presentation/widgets/settings_default_item.dart';
import 'package:mzady/features/profile/presentation/widgets/settings_trailing_item.dart';
import 'package:mzady/translations/locale_keys.g.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: CustomText(textKey: LocaleKeys.settings_appbar_header),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(20.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                const BuildSectionHeader(
                  title: LocaleKeys.settings_account_settings_header,
                ),
                AppSize.s12.verticalSpace,
                BuildSettingsGroup(
                  items: [
                    SettingsDefaultItem(
                      title: LocaleKeys.settings_my_addresses_label,
                      icon: AssetsManager.icLocation,
                      onTap: () => context.push(Routes.address),
                    ),
                    SettingsDefaultItem(
                      title: LocaleKeys.settings_payment_methods_label,
                      icon: AssetsManager.icCreditCard,
                      onTap: () {},
                      isLast: true,
                    ),
                    SettingsDefaultItem(
                      title: LocaleKeys.settings_change_password_label,
                      icon: AssetsManager.icLock,
                      onTap: () => context.push(Routes.changePassword),
                    ),
                  ],
                ),

                AppSize.s24.verticalSpace,

                const BuildSectionHeader(
                  title: LocaleKeys.settings_preferences_header,
                ),
                AppSize.s12.verticalSpace,
                BuildSettingsGroup(
                  items: [
                    SettingsDefaultItem(
                      title: LocaleKeys.settings_notifications_label,
                      icon: AssetsManager.icNotification,
                      onTap: () {},
                    ),
                    const SettingsChangeLanguage(),
                    const SettingsChangeModeItem(),
                  ],
                ),

                AppSize.s24.verticalSpace,

                const BuildSectionHeader(
                  title: LocaleKeys.settings_support_legal_header,
                ),
                AppSize.s12.verticalSpace,
                BuildSettingsGroup(
                  items: [
                    SettingsDefaultItem(
                      title: LocaleKeys.settings_contact_us_label,
                      icon: AssetsManager.icContactUs,
                      onTap: () => context.push(Routes.contactUs),
                    ),
                    SettingsDefaultItem(
                      title: LocaleKeys.settings_privacy_policy_label,
                      icon: AssetsManager.icPrivacy,
                      onTap: () => context.push(Routes.privacyPolicy),
                    ),
                    SettingsDefaultItem(
                      title: LocaleKeys.settings_terms_of_service_label,
                      icon: AssetsManager.icTerms,
                      onTap: () => context.push(Routes.termsOfService),
                      isLast: true,
                    ),
                  ],
                ),

                AppSize.s24.verticalSpace,

                const BuildSectionHeader(
                  title: LocaleKeys.settings_about_mzady_header,
                ),
                AppSize.s12.verticalSpace,
                BuildSettingsGroup(
                  items: [
                    SettingsDefaultItem(
                      title: LocaleKeys.settings_rate_app_label,
                      icon: AssetsManager.icStar,
                      onTap: () {},
                    ),
                    SettingsDefaultItem(
                      title: LocaleKeys.settings_share_app_label,
                      icon: AssetsManager.icShare,
                      onTap: () {},
                    ),
                    SettingsTrailingItem(
                      title: LocaleKeys.settings_app_version_label,
                      icon: const AppSvgIcon(
                        iconName: AssetsManager.icInfo,
                        size: AppSize.i18,
                      ),
                      trailing: Text('1.0.2', style: context.bodySmall),
                      isLast: true,
                    ),
                  ],
                ),

                AppSize.s32.verticalSpace,

                const BuildLogoutButton(),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
