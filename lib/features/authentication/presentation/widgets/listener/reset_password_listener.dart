import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mzady/core/routing/routes.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/widgets/animated_listen_button.dart';
import 'package:mzady/core/widgets/custom_elevated_button.dart';
import 'package:mzady/features/authentication/presentation/logic/forgot_password/forgot_password_cubit.dart';
import 'package:mzady/features/authentication/presentation/logic/forgot_password/forgot_password_states.dart';

class ResetPasswordListener extends StatelessWidget {
  const ResetPasswordListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgotPasswordCubit, ForgotPasswordStates>(
      listenWhen: (previous, current) =>
          current is SuccessResetPassword || current is ErrorResetPassword,
      listener: (context, state) {
        state.whenOrNull(
          successResetPassword: () {
            context.showSuccessSnackBar(
              message: 'Reset Password successfully',
              title: 'Reset Password Success',
            );
            context.goNamed(Routes.layout);
          },
          errorResetPassword: (errorMessage) {
            context.showErrorSnackBar(
              message: errorMessage,
              title: 'Reset Password Error',
            );
          },
        );
      },
      child: Builder(
        builder: (context) {
          final isLoading = context.select(
            (ForgotPasswordCubit cubit) => cubit.state is LoadingResetPassword,
          );

          return AnimatedListenButton(
            isLoading: isLoading,
            button: CustomElevatedButton(
              text: 'Reset Password',
              onPressed: () => _handleResetPassword(context),
            ),
          );
        },
      ),
    );
  }

  void _handleResetPassword(BuildContext context) {
    final cubit = context.read<ForgotPasswordCubit>();

    if (cubit.resetPasswordFormKey.currentState!.validate()) {
      cubit.emitResetPasswordStates();
    } else {
      context.showErrorSnackBar(
        message: 'Please check your inputs',
        title: 'Validation Error',
      );
    }
  }
}
