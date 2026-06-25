import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';
import 'package:mzady/core/widgets/custom_text_field.dart';
import 'package:mzady/features/authentication/presentation/logic/forgot_password/forgot_password_cubit.dart';
import 'package:mzady/features/authentication/presentation/logic/forgot_password/forgot_password_states.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgotPasswordCubit, ForgotPasswordStates>(
      buildWhen: (previous, current) => current is VisibilityPasswordState,
      builder: (context, state) {
        final ForgotPasswordCubit cubit = context.read<ForgotPasswordCubit>();

        return Form(
          child: Column(
            children: [
              CustomTextField(
                controller: cubit.passwordController,
                hintText: 'New Password',
                isObscureText: cubit.obscurePassword,
                prefixIcon: AppSvgIcon(
                  iconName: AssetsManager.icLock,
                  color: context.colorScheme.onSurfaceVariant,
                  size: AppSize.i18,
                ),
                suffixIcon: GestureDetector(
                  onTap: () =>
                      cubit.emitVisibilityPassword(cubit.obscurePassword),
                  child: AppSvgIcon(
                    iconName: cubit.obscurePassword
                        ? AssetsManager.icEyeClosed
                        : AssetsManager.icEye,
                    color: context.colorScheme.onSurfaceVariant,
                    size: AppSize.i18,
                  ),
                ),
              ),
              AppSize.s20.verticalSpace,
              CustomTextField(
                controller: cubit.confirmPasswordController,
                hintText: 'Confirm New Password',
                isObscureText: cubit.obscureConfirmPassword,
                prefixIcon: AppSvgIcon(
                  iconName: AssetsManager.icLock,
                  color: context.colorScheme.onSurfaceVariant,
                  size: AppSize.i18,
                ),
                suffixIcon: GestureDetector(
                  onTap: () => cubit.emitVisibilityPassword(
                    cubit.obscureConfirmPassword,
                  ),
                  child: AppSvgIcon(
                    iconName: cubit.obscureConfirmPassword
                        ? AssetsManager.icEyeClosed
                        : AssetsManager.icEye,
                    color: context.colorScheme.onSurfaceVariant,
                    size: AppSize.i18,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
