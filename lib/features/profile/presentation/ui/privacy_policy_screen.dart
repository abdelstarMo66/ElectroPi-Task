import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';
import 'package:mzady/core/widgets/custom_app_bar.dart';

import '../../../../core/widgets/custom_text.dart';
import '../../../../translations/locale_keys.g.dart';
import '../widgets/build_privacy_policy_section.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context;

    return Scaffold(
      appBar: const CustomAppBar(
        title: CustomText(textKey: LocaleKeys.privacy_policy_appbar_header),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: context.colorScheme.primary.withValues(alpha: 0.08),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: context.colorScheme.primary.withValues(
                    alpha: AppSize.op0_1,
                  ),
                ),
              ),
              child: Row(
                children: [
                  AppSvgIcon(
                    iconName: AssetsManager.icInfo,
                    size: 32,
                    color: context.colorScheme.primary,
                  ),
                  AppSize.s16.horizontalSpace,
                  Expanded(
                    child: Text(
                      'At Mzady, we value your privacy. This policy explains how we collect, use, and protect your information.',
                      style: textTheme.labelLarge?.copyWith(height: 1.5),
                    ),
                  ),
                ],
              ),
            ),
            AppSize.s32.verticalSpace,

            const BuildPrivacyPolicySection(
              icon: AssetsManager.icMemberSearch,
              title: '1. Information We Collect',
              content:
                  'We collect personal information that you provide directly to us, such as your name, email address, phone number, and bidding history.',
            ),

            const BuildPrivacyPolicySection(
              icon: AssetsManager.icData,
              title: '2. How We Use Your Data',
              content:
                  'Your data is used to manage your account, process bids, and send real-time notifications about auction status.',
            ),

            const BuildPrivacyPolicySection(
              icon: AssetsManager.icShare,
              title: '3. Data Sharing',
              content:
                  'We do not sell your personal data. We only share necessary contact information with sellers when you win an auction.',
            ),

            const BuildPrivacyPolicySection(
              icon: AssetsManager.icSecurity,
              title: '4. Security Measures',
              content:
                  'We implement industry-standard encryption (SSL/TLS) to protect your data during transmission and storage.',
            ),

            const BuildPrivacyPolicySection(
              icon: AssetsManager.icCookie,
              title: '5. Cookies & Tracking',
              content:
                  'We use cookies to enhance your experience and analyze app traffic. You can manage this in your settings.',
            ),

            Center(
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Divider(
                      color: context.colorScheme.surfaceContainerLow.withValues(
                        alpha: AppSize.op0_3,
                      ),
                    ),
                    AppSize.s16.verticalSpace,
                    Text(
                      '${LocaleKeys.privacy_policy_last_updated_label.tr()}: April 2026',
                      style: textTheme.labelSmall?.copyWith(
                        color: context.colorScheme.onSurfaceVariant,
                      ),
                    ),
                    AppSize.s8.verticalSpace,
                    CustomText(
                      textKey: 'support@mzady.com',
                      style: textTheme.bodyMedium?.copyWith(
                        color: context.colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
