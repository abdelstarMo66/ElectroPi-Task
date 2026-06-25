import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mzady/core/routing/routes.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/features/authentication/presentation/widgets/build_social_section.dart';
import 'package:mzady/features/authentication/presentation/widgets/forms/login_form.dart';
import 'package:mzady/features/authentication/presentation/widgets/header_icon.dart';
import 'package:mzady/features/authentication/presentation/widgets/listener/login_listener.dart';
import 'package:mzady/features/authentication/presentation/widgets/remember_me_section.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: AppPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderIcon(icon: AssetsManager.icLogo),
              AppSize.s20.verticalSpace,
              Text('Welcome Back', style: context.displayLarge),
              AppSize.s8.verticalSpace,
              Text(
                'Log in to your account to start bidding.',
                style: context.bodyLarge?.copyWith(
                  color: context.colorScheme.onSurfaceVariant,
                ),
              ),
              AppSize.s48.verticalSpace,
              const LoginForm(),
              AppSize.s8.verticalSpace,
              Row(
                children: [
                  const RememberMeSection(),
                  const Spacer(),
                  TextButton(
                    onPressed: () => context.pushNamed(Routes.forgotPassword),
                    child: Text(
                      'Forgot Password?',
                      style: context.labelLarge?.copyWith(
                        color: context.colorScheme.primary,
                      ),
                    ),
                  ),
                ],
              ),
              AppSize.s32.verticalSpace,
              const LoginListener(),
              AppSize.s32.verticalSpace,
              const BuildSocialSection(),
              AppSize.s40.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?", style: context.bodyLarge),
                  AppSize.s12.horizontalSpace,
                  GestureDetector(
                    onTap: () => context.pushReplacementNamed(Routes.register),
                    child: Text(
                      'Sign Up',
                      style: context.titleLarge?.copyWith(
                        color: context.colorScheme.primary,
                      ),
                    ),
                  ),
                ],
              ),
              AppSize.s40.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
