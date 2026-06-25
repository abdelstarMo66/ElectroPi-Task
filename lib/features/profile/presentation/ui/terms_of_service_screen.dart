import 'package:flutter/material.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';
import 'package:mzady/core/widgets/custom_app_bar.dart';
import 'package:mzady/core/widgets/custom_text.dart';
import 'package:mzady/features/profile/presentation/widgets/build_terms_of_service_section.dart';

import '../../../../translations/locale_keys.g.dart';

class TermsOfServiceScreen extends StatelessWidget {
  const TermsOfServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = context;

    return Scaffold(
      appBar: const CustomAppBar(
        title: CustomText(textKey: LocaleKeys.terms_of_service_appbar_header),
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
              child: Text(
                'Welcome to Mzady. By using our application, you agree to comply with and be bound by the following terms and conditions.',
                style: textTheme.labelLarge?.copyWith(
                  height: 1.5,
                  color: context.colorScheme.onSurface.withValues(alpha: 0.6),
                ),
              ),
            ),
            AppSize.s32.verticalSpace,

            const BuildTermsOfServiceSection(
              icon: AssetsManager.icAuction,
              title: '1. Bidding Rules',
              content:
                  'By placing a bid on Mzady, you enter into a legally binding contract to purchase the item if you are the winning bidder.',
            ),

            const BuildTermsOfServiceSection(
              icon: AssetsManager.icFee,
              title: '2. Payments & Fees',
              content:
                  'Winning bidders must complete the payment within 48 hours. Mzady may charge a small service fee on successful transactions.',
            ),

            const BuildTermsOfServiceSection(
              icon: AssetsManager.icDescription,
              title: '3. Item Descriptions',
              content:
                  'Sellers are responsible for the accuracy of item descriptions. Mzady provides a dispute resolution system for differences.',
            ),

            const BuildTermsOfServiceSection(
              icon: AssetsManager.icBan,
              title: '4. Prohibited Conduct',
              content:
                  'Users are forbidden from engaging in "shill bidding" or manipulating prices through multiple accounts.',
            ),

            const BuildTermsOfServiceSection(
              icon: AssetsManager.icRefund,
              title: '5. Refunds & Cancellations',
              content:
                  'Refunds are handled on a case-by-case basis. If a seller fails to deliver, the buyer is entitled to a full refund.',
            ),

            AppSize.s20.verticalSpace,

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: context.colorScheme.surfaceContainerLow.withValues(
                  alpha: AppSize.op0_1,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  AppSvgIcon(
                    iconName: AssetsManager.icSecurity,
                    size: 24,
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                  AppSize.s12.verticalSpace,
                  CustomText(
                    textKey: LocaleKeys.terms_of_service_footer_label,
                    textAlign: TextAlign.center,
                    style: textTheme.bodySmall?.copyWith(
                      color: context.colorScheme.onSurfaceVariant,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
            AppSize.s32.verticalSpace,
            Center(
              child: Text(
                '${LocaleKeys.terms_of_service_version_label}1.0.0 • ${LocaleKeys.terms_of_service_last_updated_label}April 2026',
                style: textTheme.labelSmall?.copyWith(
                  color: context.colorScheme.onSurfaceVariant.withValues(
                    alpha: AppSize.op0_7,
                  ),
                  letterSpacing: 0.5,
                ),
              ),
            ),
            AppSize.s20.verticalSpace,
          ],
        ),
      ),
    );
  }
}
