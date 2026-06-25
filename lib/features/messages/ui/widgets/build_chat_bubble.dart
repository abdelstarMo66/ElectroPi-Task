import 'package:flutter/material.dart';

import '../../../../core/utils/extensions.dart';
import '../../data/model/dto/message_dto.dart';

class BuildChatBubble extends StatelessWidget {
  const BuildChatBubble({required this.message, super.key});

  final MessageModel message;

  @override
  Widget build(BuildContext context) {
    final bool isMe = message.isMe;

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: isMe
            ? CrossAxisAlignment.end
            : CrossAxisAlignment.start,
        children: [
          // --- Message Box ---
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.75,
            ),
            decoration: BoxDecoration(
              color: isMe
                  ? context.colorScheme.primary
                  : context.colorScheme.surface,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(22),
                topRight: const Radius.circular(22),
                bottomLeft: Radius.circular(isMe ? 22 : 4),
                bottomRight: Radius.circular(isMe ? 4 : 22),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.04),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Text(
              message.text,
              // ✅ التعديل: استخدام bodyLarge (14px Regular)
              // مع ارتفاع سطر 1.4 لتحسين تجربة القراءة الطويلة
              style: context.bodyLarge?.copyWith(
                color: isMe
                    ? context.colorScheme.surface
                    : context.colorScheme.onSurface.withValues(alpha: 0.6),
                height: 1.4,
              ),
            ),
          ),

          // --- Time ---
          Padding(
            padding: const EdgeInsets.only(top: 4, left: 4, right: 4),
            child: Text(
              message.time,
              // ✅ التعديل: استخدام labelSmall (10px Regular)
              style: context.labelSmall?.copyWith(
                color: context.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
