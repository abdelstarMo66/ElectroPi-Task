import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/utils/validation.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';
import 'package:mzady/core/widgets/custom_text_field.dart';
import 'package:mzady/features/authentication/presentation/logic/login/login_cubit.dart';
import 'package:mzady/features/authentication/presentation/logic/login/login_states.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginCubit cubit = context.read<LoginCubit>();

    return Form(
      key: cubit.loginFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            controller: cubit.emailController,
            hintText: 'Email Address',
            keyboardType: TextInputType.emailAddress,
            prefixIcon: AppSvgIcon(
              iconName: AssetsManager.icEmail,
              color: context.colorScheme.onSurfaceVariant,
              size: AppSize.i18,
            ),
            validator: (email) => Validation.validateEmail(email),
          ),
          AppSize.s20.verticalSpace,
          BlocBuilder<LoginCubit, LoginStates>(
            buildWhen: (previous, current) =>
                current is VisibilityPasswordState,
            builder: (context, state) {
              return CustomTextField(
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
                validator: (password) => Validation.validatePassword(password),
              );
            },
          ),
        ],
      ),
    );
  }
}
