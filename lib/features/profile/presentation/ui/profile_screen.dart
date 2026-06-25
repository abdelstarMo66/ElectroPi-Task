import 'package:flutter/material.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/custom_layout_body.dart';
import 'package:mzady/features/profile/presentation/widgets/my_auction_card.dart';
import 'package:mzady/features/profile/presentation/widgets/profile_header_item.dart';
import 'package:mzady/features/profile/presentation/widgets/vip_banner_section.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0.0),
      body: CustomLayoutBody(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppSize.s24.verticalSpace,
                    const ProfileInformation(),
                    const VIPBannerSection(isSubscribed: false),
                    const Divider(thickness: 1, height: 1),
                    AppSize.s32.verticalSpace,
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: MyAuctionCard(),
                );
              }, childCount: 5),
            ),
          ],
        ),
      ),
    );
  }
}
