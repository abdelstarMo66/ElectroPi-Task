import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mzady/core/routing/routes.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/widgets/animated_listen_button.dart';
import 'package:mzady/core/widgets/custom_elevated_button.dart';
import 'package:mzady/features/authentication/presentation/logic/register/register_cubit.dart';
import 'package:mzady/features/authentication/presentation/logic/register/register_states.dart';

class VerifyAccountListener extends StatelessWidget {
  const VerifyAccountListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterStates>(
      listenWhen: (previous, current) =>
          current is SuccessVerifyAccount || current is ErrorVerifyAccount,
      listener: (context, state) {
        state.whenOrNull(
          successVerifyAccount: () {
            context.showSuccessSnackBar(
              message: 'Verify Account successfully',
              title: 'Verify Account Success',
            );
            context.goNamed(Routes.layout);
          },
          errorVerifyAccount: (errorMessage) {
            context.showErrorSnackBar(
              message: errorMessage,
              title: 'Verify Account Error',
            );
          },
        );
      },
      child: Builder(
        builder: (context) {
          final isLoading = context.select(
            (RegisterCubit cubit) => cubit.state is LoadingVerifyAccount,
          );

          return AnimatedListenButton(
            isLoading: isLoading,
            button: CustomElevatedButton(
              text: 'Verify Account',
              onPressed: () => _handleVerifyAccount(context),
            ),
          );
        },
      ),
    );
  }

  void _handleVerifyAccount(BuildContext context) {
    final cubit = context.read<RegisterCubit>();

    if (cubit.otpController.text.isNullOrEmpty ||
        cubit.otpController.text.length != 4) {
      context.showErrorSnackBar(
        message: 'Please enter a valid code',
        title: 'Validation Error',
      );
    } else {
      cubit.emitVerifyAccountStates();
    }
  }
}
