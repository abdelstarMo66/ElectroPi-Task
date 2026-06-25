import 'package:flutter/material.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/custom_app_bar.dart';
import 'package:mzady/core/widgets/custom_text.dart';
import 'package:mzady/features/messages/ui/widgets/build_app_bar_action_item.dart';
import 'package:mzady/features/messages/ui/widgets/build_chat_bubble.dart';
import 'package:mzady/features/messages/ui/widgets/build_floating_input_area.dart';
import 'package:mzady/features/messages/ui/widgets/build_profile_with_status.dart';

import '../../../translations/locale_keys.g.dart';
import '../data/model/dto/message_dto.dart';

class ChatDetailsScreen extends StatelessWidget {
  const ChatDetailsScreen({required this.userName, super.key});

  final String userName;

  @override
  Widget build(BuildContext context) {
    final textTheme = context;

    return Scaffold(
      appBar: CustomAppBar(
        title: Row(
          children: [
            const BuildProfileWithStatus(profileSize: 45.0),
            AppSize.s10.horizontalSpace,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    userName,
                    style: textTheme.titleMedium,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  CustomText(
                    textKey: LocaleKeys.chat_details_typing_label,
                    style: textTheme.labelSmall?.copyWith(
                      color: context.colorScheme.primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          const BuildAppBarActionItem(icon: AssetsManager.icCall),
          const BuildAppBarActionItem(icon: 'AssetsManager.icMoreVert'),
          AppSize.s8.horizontalSpace,
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              itemCount: demoMessages.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) =>
                  BuildChatBubble(message: demoMessages[index]),
            ),
          ),
          const BuildFloatingInputArea(),
        ],
      ),
    );
  }
}
