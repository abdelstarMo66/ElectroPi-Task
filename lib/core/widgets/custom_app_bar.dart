import 'package:flutter/material.dart';

import '../utils/extensions.dart';
import 'back_icon_btn.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({required this.title, super.key, this.actions});

  final Widget title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: DefaultTextStyle(style: context.displaySmall!, child: title),

      leading: ModalRoute.of(context)?.canPop == true
          ? const Center(child: BackIconBtn())
          : null,

      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
