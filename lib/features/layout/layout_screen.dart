import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mzady/app/cubit/app_cubit.dart';
import 'package:mzady/app/cubit/app_states.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';

import '../../core/themes/color_manager.dart';
import '../../core/utils/extensions.dart';
import '../../core/utils/size_manager.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppStates>(
      buildWhen: (previous, current) =>
          current is SuccessChangeNavBar || current is ChangeNavBarVisibility,
      builder: (context, state) {
        final AppCubit cubit = context.read<AppCubit>();

        return Scaffold(
          extendBody: true,
          body: PageView(
            controller: cubit.pageController,
            onPageChanged: (index) => cubit.onPageChanged(index),
            physics: const UltraSmoothPageViewPhysics(),
            dragStartBehavior: DragStartBehavior.down,
            children: cubit.screens,
          ),
          bottomNavigationBar: _buildAnimatedNavBar(context, cubit),
        );
      },
    );
  }

  Widget _buildAnimatedNavBar(BuildContext context, AppCubit cubit) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
      height: cubit.showNavBar ? 110 : 0,
      child: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: context.colorScheme.onSurfaceVariant.withValues(
                      alpha: AppSize.op0_4,
                    ),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: AppColors.white.withValues(alpha: AppSize.op0_1),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(
                      cubit.navBarIcons.length,
                      (index) =>
                          _buildNavItem(context, index: index, cubit: cubit),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(
    BuildContext context, {
    required int index,
    required AppCubit cubit,
  }) {
    final isSelected = index == cubit.currentIndex;

    return InkResponse(
      onTap: () => cubit.changeIndex(index),
      highlightColor: AppColors.transparent,
      splashColor: AppColors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedScale(
            scale: isSelected ? 1.1 : 1.0,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeOut,
            child: AppSvgIcon(
              iconName: cubit.navBarIcons[index],
              color: isSelected
                  ? context.colorScheme.primary
                  : context.colorScheme.surfaceContainerLow.withValues(
                      alpha: AppSize.op0_6,
                    ),
            ),
          ),
          AppSize.s4.verticalSpace,
          AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            height: 3,
            width: isSelected ? 14 : 0,
            decoration: BoxDecoration(
              color: context.colorScheme.primary,
              borderRadius: BorderRadius.circular(10),
              boxShadow: isSelected
                  ? [
                      BoxShadow(
                        color: context.colorScheme.primary.withValues(
                          alpha: AppSize.op0_5,
                        ),
                        blurRadius: 6,
                        offset: const Offset(0, 1),
                      ),
                    ]
                  : [],
            ),
          ),
        ],
      ),
    );
  }
}

class UltraSmoothPageViewPhysics extends ScrollPhysics {
  const UltraSmoothPageViewPhysics({super.parent});

  @override
  UltraSmoothPageViewPhysics applyTo(ScrollPhysics? ancestor) {
    return UltraSmoothPageViewPhysics(parent: buildParent(ancestor));
  }

  @override
  double get dragStartDistanceMotionThreshold => 1.0;

  @override
  double get minFlingVelocity => 5.0;

  @override
  Simulation? createBallisticSimulation(
    ScrollMetrics position,
    double velocity,
  ) {
    if ((velocity <= 0.0 && position.pixels <= position.minScrollExtent) ||
        (velocity >= 0.0 && position.pixels >= position.maxScrollExtent)) {
      return super.createBallisticSimulation(position, velocity);
    }

    return const PageScrollPhysics().createBallisticSimulation(
      position,
      velocity * 1.5,
    );
  }
}
