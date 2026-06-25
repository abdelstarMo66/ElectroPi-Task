import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/utils/validation.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';
import 'package:mzady/core/widgets/custom_text_field.dart';
import 'package:mzady/features/authentication/presentation/logic/forgot_password/forgot_password_cubit.dart';

class ForgotPasswordForm extends StatelessWidget {
  const ForgotPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<ForgotPasswordCubit>().forgotPasswordFormKey,
      child: CustomTextField(
        controller: context.read<ForgotPasswordCubit>().emailController,
        hintText: 'Email Address',
        keyboardType: TextInputType.emailAddress,
        validator: (email) => Validation.validateEmail(email),
        prefixIcon: AppSvgIcon(
          iconName: AssetsManager.icEmail,
          color: context.colorScheme.onSurfaceVariant,
          size: AppSize.i18,
        ),
      ),
    );
  }
}
