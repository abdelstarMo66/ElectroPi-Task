import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';
import 'package:mzady/core/widgets/custom_network_image.dart';
import 'package:mzady/features/profile/presentation/logic/profile_cubit.dart';
import 'package:mzady/features/profile/presentation/logic/profile_states.dart';

import '../../../../core/routing/routes.dart';

class BuildProfileInformation extends StatelessWidget {
  const BuildProfileInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileStates>(
      builder: (context, state) {
        final user = context.read<ProfileCubit>().user;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomNetworkImage(
                  imageUrl: user?.profileImage ?? '',
                  width: AppSize.s90,
                  height: AppSize.s90,
                  isCircle: true,
                  borderWidth: AppSize.s2,
                  borderColor: context.colorScheme.primary,
                ),
                AppSize.s20.horizontalSpace,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(user?.name ?? '', style: context.displaySmall),
                      Text(
                        '@${user?.userName ?? ''}',
                        style: context.bodyLarge?.copyWith(
                          color: context.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () => context.push(Routes.settings),
                  icon: AppSvgIcon(
                    iconName: AssetsManager.icSettings,
                    color: context.colorScheme.onSurface.withValues(
                      alpha: AppSize.op0_6,
                    ),
                  ),
                ),
              ],
            ),
            AppSize.s20.verticalSpace,
            Text(
              user?.bio == null || user!.bio!.isEmpty
                  ? 'Add a bio to your profile...'
                  : user.bio!,
              style: context.bodyLarge?.copyWith(
                color: context.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        );
      },
    );
  }
}
