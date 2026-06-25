import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';

class AnimatedListenButton extends StatelessWidget {
  const AnimatedListenButton({
    required this.button,
    required this.isLoading,
    super.key,
  });

  final bool isLoading;
  final Widget button;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: button,
      secondChild: Container(
        width: double.infinity,
        height: AppSize.s55,
        decoration: BoxDecoration(
          color: context.colorScheme.primary,
          borderRadius: BorderRadius.circular(AppSize.r12),
        ),
        alignment: Alignment.center,
        child: LoadingAnimationWidget.staggeredDotsWave(
          color: context.colorScheme.onPrimary,
          size: AppSize.i28,
        ),
      ),
      crossFadeState: isLoading
          ? CrossFadeState.showSecond
          : CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 400),
    );
  }
}
