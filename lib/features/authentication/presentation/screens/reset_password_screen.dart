import 'package:flutter/material.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/custom_app_bar.dart';
import 'package:mzady/features/authentication/presentation/widgets/forms/reset_password_form.dart';
import 'package:mzady/features/authentication/presentation/widgets/header_icon.dart';
import 'package:mzady/features/authentication/presentation/widgets/listener/reset_password_listener.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: SizedBox.shrink()),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSize.s20.verticalSpace,
              const HeaderIcon(icon: AssetsManager.icKey),
              AppSize.s32.verticalSpace,
              Text('Reset Password', style: context.displayLarge),
              AppSize.s12.verticalSpace,
              Text(
                'Your new password must be different from previously used passwords.',
                style: context.bodyLarge?.copyWith(
                  color: context.colorScheme.onSurfaceVariant,
                  height: AppSize.s1_5,
                ),
              ),
              AppSize.s40.verticalSpace,
              const ResetPasswordForm(),
              AppSize.s40.verticalSpace,
              const ResetPasswordListener(),
            ],
          ),
        ),
      ),
    );
  }
}
