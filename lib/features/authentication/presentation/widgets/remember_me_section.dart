import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mzady/core/themes/color_manager.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';
import 'package:mzady/features/authentication/presentation/logic/login/login_cubit.dart';
import 'package:mzady/features/authentication/presentation/logic/login/login_states.dart';

class RememberMeSection extends StatelessWidget {
  const RememberMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginStates>(
      buildWhen: (previous, current) => current is RememberMeChangeState,
      builder: (context, state) {
        final LoginCubit cubit = context.read<LoginCubit>();
        return GestureDetector(
          onTap: () => cubit.emitRememberMe(),
          child: Row(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                width: AppSize.s20,
                height: AppSize.s20,
                decoration: BoxDecoration(
                  color: cubit.rememberMe
                      ? context.colorScheme.secondary
                      : AppColors.transparent,
                  borderRadius: BorderRadius.circular(AppSize.r8),
                  border: Border.all(
                    color: cubit.rememberMe
                        ? context.colorScheme.secondary
                        : context.colorScheme.surfaceContainerLow,
                    width: AppSize.s1_5,
                  ),
                ),
                child: cubit.rememberMe
                    ? const AppSvgIcon(
                        iconName: AssetsManager.icCheck,
                        color: AppColors.white,
                        size: AppSize.i14,
                      )
                    : null,
              ),
              AppSize.s8.horizontalSpace,
              Text('Remember me', style: context.labelLarge),
            ],
          ),
        );
      },
    );
  }
}
