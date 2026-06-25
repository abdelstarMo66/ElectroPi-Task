import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mzady/core/themes/color_manager.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';
import 'package:mzady/features/authentication/presentation/logic/register/register_cubit.dart';
import 'package:mzady/features/authentication/presentation/logic/register/register_states.dart';

class TermsSection extends StatelessWidget {
  const TermsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterStates>(
      buildWhen: (previous, current) => current is TermsChangeState,
      builder: (context, state) {
        final RegisterCubit cubit = context.read<RegisterCubit>();

        return GestureDetector(
          onTap: () => cubit.emitTermsChange(),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                width: AppSize.s20,
                height: AppSize.s20,
                decoration: BoxDecoration(
                  color: cubit.isTermsAccepted
                      ? context.colorScheme.secondary
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(AppSize.r8),
                  border: Border.all(
                    color: cubit.isTermsAccepted
                        ? context.colorScheme.secondary
                        : context.colorScheme.surfaceContainerLow,
                    width: AppSize.s1_5,
                  ),
                ),
                child: cubit.isTermsAccepted
                    ? const AppSvgIcon(
                        iconName: AssetsManager.icCheck,
                        color: AppColors.white,
                        size: AppSize.i14,
                      )
                    : null,
              ),
              AppSize.s12.horizontalSpace,
              Expanded(
                child: RichText(
                  text: TextSpan(
                    style: context.labelLarge,
                    children: [
                      const TextSpan(
                        text: 'By creating an account, you agree to our ',
                      ),
                      TextSpan(
                        text: 'Terms & Conditions',
                        style: context.labelLarge?.copyWith(
                          color: context.colorScheme.primary,
                        ),
                      ),
                      const TextSpan(text: ' and '),
                      TextSpan(
                        text: 'Privacy Policy.',
                        style: context.labelLarge?.copyWith(
                          color: context.colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
