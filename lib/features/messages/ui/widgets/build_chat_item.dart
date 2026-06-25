import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/custom_network_image.dart';
import 'package:mzady/features/messages/data/model/dto/chat_dto.dart';

import '../../../../core/routing/routes.dart';

class BuildChatItem extends StatelessWidget {
  const BuildChatItem({required this.chat, super.key});

  final ChatDTO chat;

  @override
  Widget build(BuildContext context) {
    final textTheme = context;

    return InkWell(
      onTap: () => context.push(Routes.chatDetails),
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Row(
          children: [
            CustomNetworkImage(
              imageUrl: chat.imageUrl,
              width: 55.0,
              height: 55.0,
              isCircle: true,
            ),
            AppSize.s16.horizontalSpace,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(chat.name, style: textTheme.titleLarge),
                      Text(
                        chat.time,
                        style: textTheme.labelSmall?.copyWith(
                          color: context.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                  AppSize.s6.verticalSpace,
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          chat.lastMessage,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: textTheme.bodyLarge?.copyWith(
                            color: chat.unreadCount > 0
                                ? context.colorScheme.onSurface.withValues(
                                    alpha: 0.6,
                                  )
                                : context.colorScheme.onSurfaceVariant
                                      .withValues(alpha: AppSize.op0_8),
                            fontWeight: chat.unreadCount > 0
                                ? FontWeight.w500
                                : FontWeight.w400,
                          ),
                        ),
                      ),
                      if (chat.unreadCount > 0)
                        Container(
                          margin: const EdgeInsets.only(left: 8),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: context.colorScheme.primary,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            '${chat.unreadCount}',
                            style: textTheme.labelSmall?.copyWith(
                              color: context.colorScheme.surface,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
