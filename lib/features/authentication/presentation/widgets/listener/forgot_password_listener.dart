import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mzady/core/routing/routes.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/widgets/animated_listen_button.dart';
import 'package:mzady/core/widgets/custom_elevated_button.dart';
import 'package:mzady/features/authentication/presentation/logic/forgot_password/forgot_password_cubit.dart';
import 'package:mzady/features/authentication/presentation/logic/forgot_password/forgot_password_states.dart';

class ForgotPasswordListener extends StatelessWidget {
  const ForgotPasswordListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgotPasswordCubit, ForgotPasswordStates>(
      listenWhen: (previous, current) =>
          current is SuccessForgotPassword || current is ErrorForgotPassword,
      listener: (context, state) {
        state.whenOrNull(
          successForgotPassword: () {
            context.showSuccessSnackBar(
              message: 'Forgot Password successfully',
              title: 'Forgot Password Success',
            );
            context.pushNamed(Routes.verifyPassword);
          },
          errorForgotPassword: (errorMessage) {
            context.showErrorSnackBar(
              message: errorMessage,
              title: 'Forgot Password Error',
            );
          },
        );
      },
      child: Builder(
        builder: (context) {
          final isLoading = context.select(
            (ForgotPasswordCubit cubit) => cubit.state is LoadingForgotPassword,
          );

          return AnimatedListenButton(
            isLoading: isLoading,
            button: CustomElevatedButton(
              text: 'Send Reset Code',
              onPressed: () => _handleSendResetCode(context),
            ),
          );
        },
      ),
    );
  }

  void _handleSendResetCode(BuildContext context) {
    final cubit = context.read<ForgotPasswordCubit>();

    if (cubit.forgotPasswordFormKey.currentState!.validate()) {
      cubit.emitForgotPasswordStates();
    } else {
      context.showErrorSnackBar(
        message: 'Please check your inputs',
        title: 'Validation Error',
      );
    }
  }
}
