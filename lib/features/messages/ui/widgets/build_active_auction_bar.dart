import 'package:flutter/material.dart';
import 'package:mzady/features/messages/ui/widgets/build_profile_with_status.dart';

import '../../../../core/utils/extensions.dart';
import '../../../../core/utils/size_manager.dart';

class BuildActiveAuctionBar extends StatelessWidget {
  const BuildActiveAuctionBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 115,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          itemCount: 10,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsetsDirectional.only(end: 12.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const BuildProfileWithStatus(profileSize: 65.0),
                AppSize.s8.verticalSpace,
                SizedBox(
                  width: 70,
                  child: Text(
                    'Seller Name ${index + 1}',
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.labelMedium,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
