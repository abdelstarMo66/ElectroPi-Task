import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mzady/core/routing/routes.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';
import 'package:mzady/core/widgets/custom_app_bar.dart';
import 'package:mzady/core/widgets/custom_text.dart';
import 'package:mzady/features/messages/ui/widgets/build_active_auction_bar.dart';
import 'package:mzady/features/messages/ui/widgets/build_chat_item.dart';

import '../../../translations/locale_keys.g.dart';
import '../data/model/dto/chat_dto.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const CustomText(textKey: LocaleKeys.messages_appbar_header),
        actions: [
          IconButton(
            icon: AppSvgIcon(
              iconName: AssetsManager.icSearch,
              size: AppSize.s20,
              color: context.colorScheme.onSurfaceVariant.withValues(
                alpha: AppSize.op0_8,
              ),
            ),
            onPressed: () => context.push(Routes.searchMessages),
          ),
          AppSize.s12.horizontalSpace,
        ],
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const BuildActiveAuctionBar(),
          SliverPadding(
            padding: const EdgeInsets.only(top: AppSize.s8, bottom: 100),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => BuildChatItem(chat: chatData[index]),
                childCount: chatData.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
