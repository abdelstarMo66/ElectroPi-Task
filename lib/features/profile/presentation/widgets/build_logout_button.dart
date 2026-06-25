import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mzady/core/di/dependency_injection.dart';
import 'package:mzady/core/routing/routes.dart';
import 'package:mzady/core/services/local/secure_storage_manager.dart';
import 'package:mzady/core/services/local/secure_utils.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';
import 'package:mzady/core/widgets/custom_text.dart';

import '../../../../translations/locale_keys.g.dart';

class BuildLogoutButton extends StatelessWidget {
  const BuildLogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        getIt<SecureStorageManager>()
            .removeData(key: SecureKeys.userToken)
            .then((_) => context.goNamed(Routes.login));
      },
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: context.colorScheme.error.withValues(alpha: AppSize.op0_1),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: context.colorScheme.error.withValues(alpha: AppSize.op0_05),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: context.colorScheme.surface,
                shape: BoxShape.circle,
              ),
              child: AppSvgIcon(
                iconName: AssetsManager.icExit,
                size: AppSize.i18,
                color: context.colorScheme.error.withValues(
                  alpha: AppSize.op0_9,
                ),
              ),
            ),
            AppSize.s12.horizontalSpace,
            CustomText(
              textKey: LocaleKeys.settings_logout_btn,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: context.colorScheme.error,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
