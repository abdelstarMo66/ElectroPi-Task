import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/custom_app_bar.dart';
import 'package:mzady/features/authentication/presentation/logic/register/register_cubit.dart';
import 'package:mzady/features/authentication/presentation/widgets/header_icon.dart';
import 'package:mzady/features/authentication/presentation/widgets/listener/verify_account_listener.dart';
import 'package:mzady/features/authentication/presentation/widgets/pin_code_section.dart';
import 'package:mzady/features/authentication/presentation/widgets/resend_code_section.dart';

class VerifyAccountScreen extends StatelessWidget {
  const VerifyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: SizedBox.shrink()),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: AppSize.s24),
          child: Column(
            children: [
              AppSize.s20.verticalSpace,
              const HeaderIcon(icon: AssetsManager.icSecurity),
              AppSize.s24.verticalSpace,
              Text('Verification Code', style: context.displayLarge),
              AppSize.s12.verticalSpace,
              Text(
                'We have sent the code to your email',
                textAlign: TextAlign.center,
                style: context.bodyLarge?.copyWith(
                  color: context.colorScheme.onSurfaceVariant,
                ),
              ),
              Text(
                'm.muhammed@domain.com',
                style: context.titleLarge?.copyWith(
                  color: context.colorScheme.onTertiaryContainer,
                ),
              ),
              AppSize.s60.verticalSpace,
              PinCodeSection(
                pinController: context.read<RegisterCubit>().otpController,
              ),
              AppSize.s60.verticalSpace,
              const VerifyAccountListener(),
              AppSize.s40.verticalSpace,
              ResendCodeSection(cubit: context.read<RegisterCubit>()),
              AppSize.s40.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
