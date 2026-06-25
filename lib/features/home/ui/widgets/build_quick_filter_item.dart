import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mzady/core/routing/routes.dart';
import 'package:mzady/core/themes/font_manager.dart';
import 'package:mzady/core/themes/style_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';

import '../../../../core/utils/extensions.dart';
import '../../../../core/utils/size_manager.dart';

class BuildQuickFilterItem extends StatelessWidget {
  const BuildQuickFilterItem({
    required this.category,
    required this.index,
    super.key,
  });

  final Map<String, dynamic> category;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (index == 0) {
          context.push(Routes.categories);
        } else {
          context.push(Routes.categoryProducts, extra: category['name']);
        }
      },
      child: Column(
        children: [
          _buildCategoryIcon(context.colorScheme),
          AppSize.s10.verticalSpace,
          Text(
            category['name'],
            style: TextStyleManager.createCustomFontStyle(
              context,
              fontSize: FontSize.s12,
              fontWeight: index == 0
                  ? FontWeightManager.bold
                  : FontWeightManager.medium,
              color: index == 0 ? context.colorScheme.onSurfaceVariant : null,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryIcon(ColorScheme colorScheme) => AnimatedContainer(
    duration: const Duration(milliseconds: 300),
    height: 65,
    width: 65,
    decoration: BoxDecoration(
      color: index == 0 ? colorScheme.onSurfaceVariant : colorScheme.surface,
      borderRadius: BorderRadiusDirectional.only(
        topStart: Radius.circular(index % 2 == 0 ? 28 : 12),
        topEnd: Radius.circular(index % 2 == 0 ? 12 : 28),
        bottomStart: Radius.circular(index % 2 == 0 ? 18 : 35),
        bottomEnd: Radius.circular(index % 2 == 0 ? 35 : 18),
      ),
      boxShadow: [
        BoxShadow(
          color: index == 0
              ? colorScheme.onSurfaceVariant.withValues(alpha: AppSize.op0_3)
              : colorScheme.surfaceContainerLow.withValues(
                  alpha: AppSize.op0_1,
                ),
          blurRadius: 12,
          offset: const Offset(0, 6),
        ),
      ],
      border: index == 0
          ? null
          : Border.all(
              color: colorScheme.surfaceContainerLow.withValues(
                alpha: AppSize.op0_2,
              ),
            ),
    ),
    child: Center(
      child: category['icon'] is String
          ? AppSvgIcon(
              iconName: category['icon'],
              size: 28,
              color: index == 0 ? colorScheme.surface : colorScheme.primary,
            )
          : Icon(
              category['icon'],
              color: index == 0 ? colorScheme.surface : colorScheme.primary,
              size: 28,
            ),
    ),
  );
}
