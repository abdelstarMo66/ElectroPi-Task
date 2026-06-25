import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mzady/core/routing/routes.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/widgets/animated_listen_button.dart';
import 'package:mzady/core/widgets/custom_elevated_button.dart';
import 'package:mzady/features/authentication/presentation/logic/login/login_cubit.dart';
import 'package:mzady/features/authentication/presentation/logic/login/login_states.dart';

class LoginListener extends StatelessWidget {
  const LoginListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginStates>(
      listenWhen: (previous, current) =>
          current is SuccessLogin || current is ErrorLogin,
      listener: (context, state) {
        state.whenOrNull(
          successLogin: () {
            context.showSuccessSnackBar(
              message: 'Login successfully',
              title: 'Login Success',
            );
            context.goNamed(Routes.layout);
          },
          errorLogin: (errorMessage) {
            context.showErrorSnackBar(
              message: errorMessage,
              title: 'Login Error',
            );
          },
        );
      },
      child: Builder(
        builder: (context) {
          final isLoading = context.select(
            (LoginCubit cubit) => cubit.state is LoadingLogin,
          );

          return AnimatedListenButton(
            isLoading: isLoading,
            button: CustomElevatedButton(
              text: 'Log In',
              onPressed: () => _handleLogin(context),
            ),
          );
        },
      ),
    );
  }

  void _handleLogin(BuildContext context) {
    final cubit = context.read<LoginCubit>();

    if (cubit.loginFormKey.currentState!.validate()) {
      cubit.emitLoginStates();
    } else {
      context.showErrorSnackBar(
        message: 'Please check your inputs',
        title: 'Validation Error',
      );
    }
  }
}
