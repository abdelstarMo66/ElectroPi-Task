import 'package:flutter/material.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/features/authentication/presentation/logic/providers/resend_code_provider.dart';

class ResendCodeSection extends StatelessWidget {
  const ResendCodeSection({required this.cubit, super.key});

  final ResendCodeProvider cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Didn't receive the code?", style: context.bodyMedium),
        AppSize.s8.verticalSpace,
        StreamBuilder<int>(
          stream: cubit.timerStream,
          initialData: 59,
          builder: (context, snapshot) {
            final seconds = snapshot.data ?? 0;
            final canResend = seconds == 0;

            return TextButton(
              onPressed: canResend ? () => cubit.emitResendOtpStates() : null,
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: canResend
                    ? const Text('Resend Code', key: ValueKey('resend'))
                    : Text(
                        'Resend in 00:${seconds.toString().padLeft(2, '0')}',
                        key: const ValueKey('timer'),
                      ),
                transitionBuilder: (child, animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: ScaleTransition(scale: animation, child: child),
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
