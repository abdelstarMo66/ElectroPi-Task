import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mzady/core/routing/routes.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/widgets/animated_listen_button.dart';
import 'package:mzady/core/widgets/custom_elevated_button.dart';
import 'package:mzady/features/authentication/presentation/logic/forgot_password/forgot_password_cubit.dart';
import 'package:mzady/features/authentication/presentation/logic/forgot_password/forgot_password_states.dart';

class VerifyPasswordListener extends StatelessWidget {
  const VerifyPasswordListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgotPasswordCubit, ForgotPasswordStates>(
      listenWhen: (previous, current) =>
          current is SuccessVerifyPassword || current is ErrorVerifyPassword,
      listener: (context, state) {
        state.whenOrNull(
          successVerifyPassword: () {
            context.showSuccessSnackBar(
              message: 'Verify Password successfully',
              title: 'Verify Password Success',
            );
            context.pushReplacementNamed(Routes.resetPassword);
          },
          errorVerifyPassword: (errorMessage) {
            context.showErrorSnackBar(
              message: errorMessage,
              title: 'Verify Password Error',
            );
          },
        );
      },
      child: Builder(
        builder: (context) {
          final isLoading = context.select(
            (ForgotPasswordCubit cubit) => cubit.state is LoadingVerifyPassword,
          );

          return AnimatedListenButton(
            isLoading: isLoading,
            button: CustomElevatedButton(
              text: 'Verify Password',
              onPressed: () => _handleVerifyPassword(context),
            ),
          );
        },
      ),
    );
  }

  void _handleVerifyPassword(BuildContext context) {
    final cubit = context.read<ForgotPasswordCubit>();

    if (cubit.otpController.text.isNullOrEmpty ||
        cubit.otpController.text.length != 4) {
      context.showErrorSnackBar(
        message: 'Please enter a valid code',
        title: 'Validation Error',
      );
    } else {
      cubit.emitVerifyPasswordStates();
    }
  }
}
