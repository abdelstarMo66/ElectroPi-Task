import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mzady/core/routing/routes.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';

class HomeSearchBarSection extends StatelessWidget {
  const HomeSearchBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: GestureDetector(
        onTap: () => context.push(Routes.search),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSize.s16,
            vertical: AppSize.s16,
          ),
          margin: const EdgeInsets.symmetric(
            horizontal: AppSize.s20,
            vertical: AppSize.s16,
          ),
          decoration: BoxDecoration(
            color: context.colorScheme.surface,
            borderRadius: BorderRadius.circular(AppSize.r16),
            border: Border.all(
              color: context.colorScheme.outlineVariant.withValues(
                alpha: AppSize.op0_3,
              ),
              width: AppSize.s0_5,
            ),
            boxShadow: [
              BoxShadow(
                color: context.colorScheme.onSurfaceVariant.withValues(
                  alpha: AppSize.op0_13,
                ),
                blurRadius: AppSize.s12,
                offset: AppOffest.offset0_4,
              ),
            ],
          ),
          child: Row(
            children: [
              AppSvgIcon(
                iconName: AssetsManager.icSearch,
                size: AppSize.i18,
                color: context.colorScheme.onSurfaceVariant,
              ),
              AppSize.s12.horizontalSpace,
              Text(
                'Search for luxury assets...',
                style: context.bodyMedium?.copyWith(
                  color: context.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
