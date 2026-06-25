import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/custom_app_bar.dart';
import 'package:mzady/features/authentication/presentation/widgets/forms/forgot_password_form.dart';
import 'package:mzady/features/authentication/presentation/widgets/header_icon.dart';
import 'package:mzady/features/authentication/presentation/widgets/listener/forgot_password_listener.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: SizedBox.shrink()),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: AppPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSize.s20.verticalSpace,
              const HeaderIcon(icon: AssetsManager.icLock),
              AppSize.s32.verticalSpace,
              Text('Forgot Password?', style: context.displayLarge),
              AppSize.s12.verticalSpace,
              Text(
                'Don\'t worry! It happens. Please enter the email address associated with your account.',
                style: context.bodyLarge?.copyWith(
                  color: context.colorScheme.onSurfaceVariant,
                  height: AppSize.s1_5,
                ),
              ),
              AppSize.s48.verticalSpace,
              const ForgotPasswordForm(),
              AppSize.s32.verticalSpace,
              const ForgotPasswordListener(),
              AppSize.s40.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Remember your password?', style: context.bodyLarge),
                  AppSize.s12.horizontalSpace,
                  GestureDetector(
                    onTap: () => context.pop(),
                    child: Text(
                      'Log In',
                      style: context.titleLarge?.copyWith(
                        color: context.colorScheme.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
