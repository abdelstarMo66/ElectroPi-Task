import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mzady/core/routing/routes.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';
import 'package:mzady/core/widgets/custom_network_image.dart';
import 'package:mzady/features/profile/presentation/logic/profile_cubit.dart';
import 'package:mzady/features/profile/presentation/logic/profile_states.dart';

import '../../../../core/utils/extensions.dart';
import '../../../../core/utils/size_manager.dart';

class HomeAppBarSection extends StatelessWidget {
  const HomeAppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileStates>(
      builder: (context, state) {
        final user = context.read<ProfileCubit>().user;

        return SliverAppBar(
          snap: true,
          floating: true,
          toolbarHeight: 60,
          leadingWidth: 90,
          leading: Padding(
            padding: const EdgeInsetsDirectional.only(start: 20),
            child: Center(
              child: CustomNetworkImage(
                imageUrl: user?.profileImage ?? '',
                isCircle: true,
              ),
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Hello, ${user?.name.split(' ')[0]} 👋',
                style: context.displaySmall,
              ),
              Text(
                'Ready to bid today?',
                style: context.labelSmall?.copyWith(
                  color: context.colorScheme.onSurfaceVariant,
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
          actions: [
            GestureDetector(
              onTap: () => context.push(Routes.notifications),
              child: Container(
                margin: const EdgeInsetsDirectional.only(end: 20),
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: context.colorScheme.onSurfaceVariant.withValues(
                    alpha: AppSize.op0_1,
                  ),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    const AppSvgIcon(iconName: AssetsManager.icNotification),
                    Positioned(
                      top: 12,
                      right: 12,
                      child: Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: context.colorScheme.primary,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: context.colorScheme.surface,
                            width: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
