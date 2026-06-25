import 'package:flutter/material.dart';
import 'package:mzady/core/themes/color_manager.dart';
import 'package:mzady/core/themes/font_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';

class VIPBannerSection extends StatelessWidget {
  final bool isSubscribed;

  const VIPBannerSection({super.key, required this.isSubscribed});

  @override
  Widget build(BuildContext context) {
    if (isSubscribed) return const SizedBox.shrink();

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: AppSize.s24),
      height: AppSize.s90,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.r24),
              gradient: LinearGradient(
                colors: [
                  context.colorScheme.primary.withValues(alpha: AppSize.op0_05),
                  AppColors.warningGold.withValues(alpha: AppSize.op0_1),
                ],
              ),
            ),
          ),
          Positioned(
            right: -20,
            top: -20,
            child: CircleAvatar(
              radius: AppSize.r48,
              backgroundColor: AppColors.warningGold.withValues(
                alpha: AppSize.op0_1,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppSize.s20),
            child: Row(
              children: [
                const Icon(
                  Icons.auto_awesome,
                  color: AppColors.warningGold,
                  size: AppSize.i28,
                ),
                AppSize.s16.horizontalSpace,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'VIP MEMBERSHIP',
                        style: context.textTheme.labelSmall?.copyWith(
                          color: AppColors.warningGold,
                          fontWeight: FontWeightManager.black,
                          letterSpacing: 2,
                        ),
                      ),
                      Text(
                        'Unlock Unlimited Bidding',
                        style: context.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeightManager.extraBold,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton.filled(
                  onPressed: () {},
                  style: IconButton.styleFrom(
                    backgroundColor: AppColors.warningGold,
                  ),
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: context.colorScheme.surface,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
