import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';

class BuildSocialSection extends StatelessWidget {
  const BuildSocialSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color dividerColor = context.colorScheme.onSurface.withValues(
      alpha: AppSize.op0_5,
    );

    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Divider(color: dividerColor, thickness: AppSize.s0_5),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSize.s16),
              child: Text(
                'Or Continue With'.toUpperCase(),
                style: context.labelMedium?.copyWith(
                  letterSpacing: AppSize.s1_5,
                ),
              ),
            ),
            Expanded(
              child: Divider(color: dividerColor, thickness: AppSize.s0_5),
            ),
          ],
        ),
        AppSize.s24.verticalSpace,
        Container(
          height: AppSize.s72,
          decoration: BoxDecoration(
            color: context.colorScheme.surface.withValues(alpha: AppSize.op0_7),
            borderRadius: BorderRadius.circular(AppSize.r20),
            border: Border.all(
              color: context.colorScheme.secondary.withValues(
                alpha: AppSize.op0_4,
              ),
            ),
          ),
          child: Row(
            children: [
              _buildGlassAction(
                icon: AssetsManager.icApple,
                color: context.colorScheme.onSurface,
                onTap: () {},
              ),
              _buildThinDivider(dividerColor),
              _buildGlassAction(icon: AssetsManager.icGoogle, onTap: () {}),
              _buildThinDivider(dividerColor),
              _buildGlassAction(icon: AssetsManager.icFacebook, onTap: () {}),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildGlassAction({
    required String icon,
    required VoidCallback onTap,
    Color? color,
  }) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppSize.r20),
        child: Center(
          child: SvgPicture.asset(
            icon,
            colorFilter: color != null
                ? ColorFilter.mode(color, BlendMode.srcIn)
                : null,
            height: AppSize.i32,
            width: AppSize.i32,
          ),
        ),
      ),
    );
  }

  Widget _buildThinDivider(Color color) {
    return Container(
      width: AppSize.s0_5,
      height: AppSize.s32,
      color: color.withValues(alpha: AppSize.op0_6),
    );
  }
}
