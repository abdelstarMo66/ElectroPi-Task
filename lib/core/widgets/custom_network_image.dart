import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:mzady/core/utils/extensions.dart';

import '../utils/size_manager.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({
    required this.imageUrl,
    super.key,
    this.width,
    this.height,
    this.borderRadius,
    this.isCircle = false,
    this.fit = BoxFit.cover,
    this.borderWidth,
    this.borderColor,
  });

  final String imageUrl;
  final double? width;
  final double? height;
  final double? borderRadius;
  final bool isCircle;
  final BoxFit fit;
  final double? borderWidth;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    final double resolvedSize = width ?? 100;

    final BorderRadius resolvedRadius = isCircle
        ? BorderRadius.circular(resolvedSize)
        : BorderRadius.circular(borderRadius ?? 0);

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
        borderRadius: isCircle ? null : resolvedRadius,
        border: borderWidth != null
            ? Border.all(
                color: borderColor ?? context.colorScheme.primary,
                width: borderWidth!,
              )
            : null,
      ),
      child: ClipRRect(
        borderRadius: resolvedRadius,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          width: width,
          height: height,
          fit: fit,
          placeholder: (context, url) => ColoredBox(
            color: context.colorScheme.surfaceContainerHighest.withValues(
              alpha: AppSize.op0_5,
            ),
            child: Center(
              child: LoadingAnimationWidget.staggeredDotsWave(
                color: context.colorScheme.primary,
                size: resolvedSize * 0.25,
              ),
            ),
          ),
          errorWidget: (context, url, error) => ColoredBox(
            color: context.colorScheme.surfaceContainerHighest.withValues(
              alpha: AppSize.op0_3,
            ),
            child: Center(
              child: Icon(
                Icons.image_not_supported_outlined,
                color: context.colorScheme.onSurfaceVariant.withValues(
                  alpha: AppSize.op0_5,
                ),
                size: (width ?? AppSize.s48) * 0.3,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
