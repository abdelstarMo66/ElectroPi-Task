import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';

class MyAuctionCard extends StatelessWidget {
  final bool isActive;
  const MyAuctionCard({super.key, this.isActive = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: context.colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.outline.withValues(alpha: 0.6),
            blurRadius: 6,
            spreadRadius: 0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                child: CachedNetworkImage(
                  imageUrl:
                      'https://images.pexels.com/photos/36922872/pexels-photo-36922872.jpeg',
                  width: double.infinity,
                  height: MediaQuery.of(context).size.width * 0.75,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => ColoredBox(
                    color: context.colorScheme.surfaceContainerHighest
                        .withValues(alpha: AppSize.op0_5),
                    child: Center(
                      child: LoadingAnimationWidget.staggeredDotsWave(
                        color: context.colorScheme.primary,
                        size: MediaQuery.of(context).size.width * 0.1875,
                      ),
                    ),
                  ),
                  errorWidget: (context, url, error) => ColoredBox(
                    color: context.colorScheme.surfaceContainerHighest
                        .withValues(alpha: AppSize.op0_3),
                    child: Center(
                      child: Icon(
                        Icons.image_not_supported_outlined,
                        color: context.colorScheme.onSurfaceVariant.withValues(
                          alpha: AppSize.op0_5,
                        ),
                        size: (double.infinity ?? AppSize.s48) * 0.3,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: isActive
                      ? context.colorScheme.primaryContainer
                      : context.colorScheme.surfaceContainerLow,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  isActive ? '● Active' : 'Ended',
                  style: context.textTheme.labelSmall?.copyWith(
                    color: isActive
                        ? context.colorScheme.primary
                        : context.colorScheme.onSurfaceVariant,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            child: Row(
              children: [
                Icon(
                  Icons.gavel_rounded,
                  size: 18,
                  color: isActive
                      ? context.colorScheme.primary
                      : context.colorScheme.onSurfaceVariant,
                ),
                AppSize.s6.horizontalSpace,
                Text(
                  '18 Bids',
                  style: context.textTheme.bodySmall?.copyWith(
                    color: isActive
                        ? context.colorScheme.primary
                        : context.colorScheme.onSurfaceVariant,
                  ),
                ),
                AppSize.s16.horizontalSpace,
                Icon(
                  Icons.visibility_outlined,
                  size: 18,
                  color: context.colorScheme.onSurfaceVariant,
                ),
                AppSize.s6.horizontalSpace,
                Text(
                  '243 Views',
                  style: context.textTheme.bodySmall?.copyWith(
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                ),
                const Spacer(),
                IconButton.outlined(
                  onPressed: () {},
                  iconSize: 16,
                  icon: const Icon(Icons.share_outlined),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 0, 14, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Porsche 911 Carrera S',
                  style: context.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                AppSize.s8.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          isActive ? 'Current Bid' : 'Sold For',
                          style: context.textTheme.bodySmall?.copyWith(
                            color: context.colorScheme.onSurfaceVariant,
                          ),
                        ),
                        Text(
                          '\$120,500',
                          style: context.textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.w800,
                            color: isActive
                                ? context.colorScheme.primary
                                : context.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                    if (isActive)
                      const _TimerChip('2d 5h left')
                    else
                      const _EndedChip(),
                  ],
                ),
                AppSize.s12.verticalSpace,
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () {},
                    style: FilledButton.styleFrom(
                      backgroundColor: isActive
                          ? context.colorScheme.primary
                          : context.colorScheme.surfaceContainerLow,
                      foregroundColor: isActive
                          ? Colors.white
                          : context.colorScheme.onSurfaceVariant,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 13),
                    ),
                    child: Text(isActive ? 'View Auction →' : 'View Results'),
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

class _TimerChip extends StatelessWidget {
  final String time;
  const _TimerChip(this.time);
  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 5),
    decoration: BoxDecoration(
      color: const Color(0xFFFFF8EC),
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: const Color(0xFFF5C842)),
    ),
    child: Row(
      children: [
        const Icon(Icons.timer_outlined, size: 12, color: Color(0xFFC17D0E)),
        const SizedBox(width: 4),
        Text(
          time,
          style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w700,
            color: Color(0xFF9A6A00),
          ),
        ),
      ],
    ),
  );
}

class _EndedChip extends StatelessWidget {
  const _EndedChip();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 5),
      decoration: BoxDecoration(
        color: context.colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: context.colorScheme.outlineVariant.withValues(alpha: 0.3),
        ),
      ),
      child: Text(
        'Closed',
        style: context.textTheme.labelSmall?.copyWith(
          color: context.colorScheme.onSurfaceVariant,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
