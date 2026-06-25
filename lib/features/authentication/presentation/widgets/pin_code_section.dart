import 'package:flutter/material.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/features/authentication/presentation/widgets/pin_theme.dart';
import 'package:pinput/pinput.dart';

class PinCodeSection extends StatelessWidget {
  const PinCodeSection({required this.pinController, super.key});

  final TextEditingController pinController;

  @override
  Widget build(BuildContext context) {
    return Pinput(
      controller: pinController,
      separatorBuilder: (index) => AppSize.s18.horizontalSpace,
      animationCurve: Curves.easeInOut,
      pinAnimationType: PinAnimationType.fade,
      textInputAction: TextInputAction.send,
      defaultPinTheme: defaultPinTheme(context),
      focusedPinTheme: defaultPinTheme(context).copyWith(
        decoration: defaultPinTheme(context).decoration!.copyWith(
          border: Border.all(
            color: context.colorScheme.primary,
            width: AppSize.s2,
          ),
          boxShadow: [
            BoxShadow(
              color: context.colorScheme.primary.withValues(
                alpha: AppSize.op0_1,
              ),
              blurRadius: AppSize.r16,
              offset: AppOffest.offset0_8,
            ),
          ],
        ),
      ),
      hapticFeedbackType: HapticFeedbackType.lightImpact,
    );
  }
}
