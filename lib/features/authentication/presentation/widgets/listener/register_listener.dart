import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mzady/core/routing/routes.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/widgets/animated_listen_button.dart';
import 'package:mzady/core/widgets/custom_elevated_button.dart';
import 'package:mzady/features/authentication/presentation/logic/register/register_cubit.dart';
import 'package:mzady/features/authentication/presentation/logic/register/register_states.dart';

class RegisterListener extends StatelessWidget {
  const RegisterListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterStates>(
      listenWhen: (previous, current) =>
          current is SuccessRegister || current is ErrorRegister,
      listener: (context, state) {
        state.whenOrNull(
          successRegister: () {
            context.showSuccessSnackBar(
              message: 'Register successfully',
              title: 'Register Success',
            );
            context.pushNamed(Routes.verifyAccount);
          },
          errorRegister: (errorMessage) {
            context.showErrorSnackBar(
              message: errorMessage,
              title: 'Register Error',
            );
          },
        );
      },
      child: Builder(
        builder: (context) {
          final isLoading = context.select(
            (RegisterCubit cubit) => cubit.state is LoadingRegister,
          );

          return AnimatedListenButton(
            isLoading: isLoading,
            button: CustomElevatedButton(
              text: 'Sign Up',
              onPressed: () => _handleSignUp(context),
            ),
          );
        },
      ),
    );
  }

  void _handleSignUp(BuildContext context) {
    final cubit = context.read<RegisterCubit>();

    if (cubit.registerFormKey.currentState!.validate()) {
      cubit.emitRegisterStates();
    } else {
      context.showErrorSnackBar(
        message: 'Please check your inputs',
        title: 'Validation Error',
      );
    }
  }
}
