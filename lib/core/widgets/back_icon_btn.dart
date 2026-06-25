import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';

import '../utils/assets_manager.dart';

class BackIconBtn extends StatelessWidget {
  const BackIconBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (context.canPop()) context.pop();
      },
      borderRadius: BorderRadius.circular(AppSize.r48),
      child: Padding(
        padding: const EdgeInsets.all(AppSize.s8),
        child: Directionality.of(context) == TextDirection.rtl
            ? Transform.flip(
                flipX: true,
                child: _buildIcon(context.colorScheme.onSurface),
              )
            : _buildIcon(context.colorScheme.onSurface),
      ),
    );
  }

  Widget _buildIcon(Color color) {
    return SvgPicture.asset(
      AssetsManager.icArrowLeft,
      width: AppSize.s20,
      height: AppSize.s20,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
    );
  }
}
