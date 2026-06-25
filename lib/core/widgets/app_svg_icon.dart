import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';

class AppSvgIcon extends StatelessWidget {
  const AppSvgIcon({
    required this.iconName,
    this.size,
    this.color,
    this.fit = BoxFit.contain,
    super.key,
  });

  final String iconName;
  final double? size;
  final Color? color;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    final Color iconColor = color ?? context.colorScheme.primary;

    return SvgPicture.asset(
      iconName,
      height: size ?? AppSize.s24,
      width: size ?? AppSize.s24,
      fit: fit,
      colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
      placeholderBuilder: (context) => Center(
        child: LoadingAnimationWidget.threeArchedCircle(
          color: iconColor,
          size: (size ?? AppSize.i24) * 0.8,
        ),
      ),
    );
  }
}
