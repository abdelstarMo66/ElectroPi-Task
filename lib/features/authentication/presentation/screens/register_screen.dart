import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mzady/core/routing/routes.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/features/authentication/presentation/widgets/build_social_section.dart';
import 'package:mzady/features/authentication/presentation/widgets/forms/register_form.dart';
import 'package:mzady/features/authentication/presentation/widgets/header_icon.dart';
import 'package:mzady/features/authentication/presentation/widgets/listener/register_listener.dart';
import 'package:mzady/features/authentication/presentation/widgets/terms_section.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
              Text('Create Account', style: context.displayLarge),
              AppSize.s8.verticalSpace,
              Text(
                'Join Mzady and start your bidding journey.',
                style: context.bodyLarge?.copyWith(
                  color: context.colorScheme.onSurfaceVariant,
                ),
              ),
              AppSize.s48.verticalSpace,
              const RegisterForm(),
              AppSize.s20.verticalSpace,
              const TermsSection(),
              AppSize.s32.verticalSpace,
              const RegisterListener(),
              AppSize.s32.verticalSpace,
              const BuildSocialSection(),
              AppSize.s40.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?', style: context.bodyLarge),
                  AppSize.s12.horizontalSpace,
                  GestureDetector(
                    onTap: () => context.pushReplacementNamed(Routes.login),
                    child: Text(
                      'Log In',
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
