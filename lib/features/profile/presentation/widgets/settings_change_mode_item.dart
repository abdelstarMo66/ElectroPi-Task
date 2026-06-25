import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mzady/app/cubit/app_cubit.dart';
import 'package:mzady/app/cubit/app_states.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';
import 'package:mzady/features/profile/presentation/widgets/settings_trailing_item.dart';
import 'package:mzady/translations/locale_keys.g.dart';

class SettingsChangeModeItem extends StatelessWidget {
  const SettingsChangeModeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppCubit, AppStates>(
      listenWhen: (previous, current) => current is SuccessChangeThemeMode,
      listener: (context, state) {
        if (Navigator.of(context).canPop()) {
          context.pop();
        }
      },
      child: BlocBuilder<AppCubit, AppStates>(
        builder: (context, state) {
          final isDark = context.read<AppCubit>().isDarkMode;

          return SettingsTrailingItem(
            title: LocaleKeys.settings_change_mode_label,
            icon: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (child, animation) =>
                  ScaleTransition(scale: animation, child: child),
              child: AppSvgIcon(
                iconName: isDark ? AssetsManager.icMoon : AssetsManager.icSun,
                size: AppSize.i18,
                key: ValueKey<bool>(isDark),
                color: isDark
                    ? context.colorScheme.primary
                    : context.colorScheme.primary,
              ),
            ),
            trailing: Transform.scale(
              scale: 0.8,
              child: Switch.adaptive(
                value: isDark,
                activeThumbColor: context.colorScheme.primary,
                onChanged: (value) {
                  context.read<AppCubit>().changeAppThemeMode();
                },
              ),
            ),
            isLast: true,
          );
        },
      ),
    );
  }
}
