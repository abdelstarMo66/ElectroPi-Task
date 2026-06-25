import 'package:flutter/material.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/widgets/custom_network_image.dart';

class BuildProfileWithStatus extends StatelessWidget {
  const BuildProfileWithStatus({required this.profileSize, super.key});
  final double profileSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomNetworkImage(
          imageUrl:
              'https://img.freepik.com/premium-photo/young-man-character-design-2d-animation-vector-illustration-style_712561-1651.jpg',
          width: profileSize,
          height: profileSize,
          isCircle: true,
          borderWidth: 2.0,
          borderColor: context.colorScheme.primary,
        ),
        Positioned(
          right: 2,
          bottom: 2,
          child: Container(
            width: profileSize * 0.27,
            height: profileSize * 0.27,
            decoration: BoxDecoration(
              color: context.colorScheme.secondary,
              shape: BoxShape.circle,
              border: Border.all(color: context.colorScheme.surface, width: 2),
            ),
          ),
        ),
      ],
    );
  }
}
