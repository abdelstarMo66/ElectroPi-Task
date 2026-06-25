import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mzady/core/themes/color_manager.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/enums_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';
import 'package:mzady/core/widgets/custom_text_field.dart';
import 'package:mzady/features/authentication/presentation/logic/register/register_cubit.dart';
import 'package:mzady/features/authentication/presentation/logic/register/register_states.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterStates>(
      buildWhen: (previous, current) =>
          current is GenderChangeState || current is VisibilityPasswordState,
      builder: (context, state) {
        final RegisterCubit cubit = context.read<RegisterCubit>();

        return Form(
          child: Column(
            children: [
              CustomTextField(
                controller: cubit.nameController,
                hintText: 'Full Name',
                prefixIcon: AppSvgIcon(
                  iconName: AssetsManager.icUser,
                  color: context.colorScheme.onSurfaceVariant,
                  size: AppSize.i18,
                ),
              ),
              AppSize.s20.verticalSpace,
              CustomTextField(
                controller: cubit.emailController,
                hintText: 'Email Address',
                keyboardType: TextInputType.emailAddress,
                prefixIcon: AppSvgIcon(
                  iconName: AssetsManager.icEmail,
                  color: context.colorScheme.onSurfaceVariant,
                  size: AppSize.i18,
                ),
              ),
              AppSize.s20.verticalSpace,
              CustomTextField(
                controller: cubit.phoneController,
                hintText: 'Phone Number',
                keyboardType: TextInputType.phone,
                prefixIcon: Icon(
                  Icons.phone_android_outlined,
                  color: context.colorScheme.onSurfaceVariant,
                  size: AppSize.i18,
                ),
              ),
              AppSize.s20.verticalSpace,
              CustomTextField(
                controller: cubit.passwordController,
                hintText: 'Password',
                isObscureText: cubit.obscurePassword,
                prefixIcon: AppSvgIcon(
                  iconName: AssetsManager.icLock,
                  color: context.colorScheme.onSurfaceVariant,
                  size: AppSize.i18,
                ),
                suffixIcon: GestureDetector(
                  onTap: () => cubit.emitVisibilityPassword(),
                  child: AppSvgIcon(
                    iconName: cubit.obscurePassword
                        ? AssetsManager.icEyeClosed
                        : AssetsManager.icEye,
                    color: context.colorScheme.onSurfaceVariant,
                    size: AppSize.i18,
                  ),
                ),
              ),
              AppSize.s24.verticalSpace,
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.s16,
                  vertical: AppSize.s12,
                ),
                decoration: BoxDecoration(
                  color: context.colorScheme.surface.withValues(
                    alpha: AppSize.op0_5,
                  ),
                  borderRadius: BorderRadius.circular(AppSize.r16),
                  border: Border.all(color: context.colorScheme.outlineVariant),
                ),
                child: Row(
                  children: [
                    Text('Gender', style: context.titleSmall),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(AppSize.s4),
                      decoration: BoxDecoration(
                        color: context.colorScheme.surface.withValues(
                          alpha: AppSize.op0_8,
                        ),
                        borderRadius: BorderRadius.circular(AppSize.r12),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildInlineOption(
                            cubit: cubit,
                            label: GenderEnum.male,
                            icon: AssetsManager.icMale,
                          ),
                          AppSize.s8.horizontalSpace,
                          _buildInlineOption(
                            cubit: cubit,
                            label: GenderEnum.female,
                            icon: AssetsManager.icFemale,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildInlineOption({
    required RegisterCubit cubit,
    required GenderEnum label,
    required String icon,
  }) {
    final bool isSelected = cubit.gender == label;

    return GestureDetector(
      onTap: () => cubit.emitGenderChange(label),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSize.s12,
          vertical: AppSize.s6,
        ),
        decoration: BoxDecoration(
          color: isSelected
              ? context.colorScheme.primary
              : AppColors.transparent,
          borderRadius: BorderRadius.circular(AppSize.r8),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: context.colorScheme.primary.withValues(
                      alpha: AppSize.op0_2,
                    ),
                    blurRadius: AppSize.r4,
                    offset: AppOffest.offset0_2,
                  ),
                ]
              : [],
        ),
        child: Row(
          children: [
            AppSvgIcon(
              iconName: icon,
              color: isSelected
                  ? context.colorScheme.onSurface
                  : context.colorScheme.onSurfaceVariant,
              size: AppSize.i18,
            ),
            AppSize.s8.horizontalSpace,
            Text(
              label.name[0].toUpperCase() + label.name.substring(1),
              style: context.bodyMedium?.copyWith(
                color: isSelected
                    ? context.colorScheme.onSurface
                    : context.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
