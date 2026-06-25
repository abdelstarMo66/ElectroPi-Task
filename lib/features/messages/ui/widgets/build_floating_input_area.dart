import 'package:flutter/material.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';
import 'package:mzady/translations/locale_keys.g.dart';

import '../../../../core/widgets/custom_text_field.dart';

class BuildFloatingInputArea extends StatefulWidget {
  const BuildFloatingInputArea({super.key});

  @override
  State<BuildFloatingInputArea> createState() => _BuildFloatingInputAreaState();
}

class _BuildFloatingInputAreaState extends State<BuildFloatingInputArea> {
  final TextEditingController messageController = TextEditingController();

  @override
  void dispose() {
    messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 12.0),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: AppSize.op0_05),
            blurRadius: 15,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: context.colorScheme.primary.withValues(
                alpha: AppSize.op0_1,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: IconButton(
              icon: AppSvgIcon(
                iconName: 'AssetsManager.icAdd',
                color: context.colorScheme.primary,
              ),
              onPressed: () {},
            ),
          ),
          AppSize.s12.horizontalSpace,

          Expanded(
            child: CustomTextField(
              controller: messageController,
              hintText: LocaleKeys.chat_details_message_hint,
              borderRadius: 20,
              fillColor: context.colorScheme.surfaceContainerLow.withValues(
                alpha: AppSize.op0_4,
              ),
            ),
          ),
          AppSize.s10.horizontalSpace,

          Material(
            color: context.colorScheme.primary,
            shape: const CircleBorder(),
            elevation: 2,
            child: InkWell(
              onTap: () {
                if (messageController.text.trim().isNotEmpty) {
                  messageController.clear();
                }
              },
              customBorder: const CircleBorder(),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: AppSvgIcon(
                  iconName: AssetsManager.icSend,
                  color: context.colorScheme.surface,
                  size: 22.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
