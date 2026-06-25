import 'package:flutter/material.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';
import 'package:mzady/core/widgets/custom_app_bar.dart';
import 'package:mzady/core/widgets/custom_text.dart';
import 'package:mzady/core/widgets/custom_text_field.dart';
import 'package:mzady/features/profile/presentation/widgets/build_contact_icon_card.dart';

import '../../../../core/widgets/custom_elevated_button.dart';
import '../../../../translations/locale_keys.g.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: CustomText(textKey: LocaleKeys.contact_us_appbar_header),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: context.colorScheme.primary.withValues(alpha: 0.08),
                  shape: BoxShape.circle,
                ),
                child: AppSvgIcon(
                  iconName: AssetsManager.icContactUs,
                  size: 100,
                  color: context.colorScheme.primary,
                ),
              ),
            ),
            AppSize.s32.verticalSpace,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: BuildContactIconCard(
                    icon: AssetsManager.icWebsite,
                    label: LocaleKeys.contact_us_website_label,
                  ),
                ),
                Expanded(
                  child: BuildContactIconCard(
                    icon: AssetsManager.icEmail,
                    label: LocaleKeys.contact_us_email_label,
                  ),
                ),
                Expanded(
                  child: BuildContactIconCard(
                    icon: AssetsManager.icCall,
                    label: LocaleKeys.contact_us_call_label,
                  ),
                ),
              ],
            ),
            AppSize.s32.verticalSpace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  textKey: LocaleKeys.contact_us_send_message_header,
                  style: context.headlineLarge,
                ),
                AppSize.s18.verticalSpace,
                CustomTextField(
                  hintText: LocaleKeys.contact_us_full_name_label,
                  prefixIcon: const AppSvgIcon(
                    iconName: AssetsManager.icUsername,
                    size: 20,
                  ),
                  controller: TextEditingController(),
                ),
                AppSize.s12.verticalSpace,
                CustomTextField(
                  hintText: LocaleKeys.contact_us_email_address_label,
                  prefixIcon: const AppSvgIcon(
                    iconName: AssetsManager.icEmail,
                    size: 20,
                  ),
                  controller: TextEditingController(),
                ),
                AppSize.s12.verticalSpace,
                CustomTextField(
                  hintText: LocaleKeys.contact_us_your_message_label,
                  maxLines: 5,
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(bottom: 80),
                    child: AppSvgIcon(
                      iconName: AssetsManager.icDescription,
                      size: 20,
                    ),
                  ),
                  controller: TextEditingController(),
                ),
              ],
            ),
            AppSize.s32.verticalSpace,
            SizedBox(
              width: double.infinity,
              height: 56,
              child: CustomElevatedButton(
                onPressed: () {},
                text: LocaleKeys.contact_us_send_btn,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
