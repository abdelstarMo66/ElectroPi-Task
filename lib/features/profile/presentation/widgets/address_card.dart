import 'package:flutter/material.dart';
import 'package:mzady/core/themes/font_manager.dart';
import 'package:mzady/core/themes/style_manager.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';
import 'package:mzady/core/widgets/custum_dialogs.dart';
import 'package:mzady/features/profile/domain/entities/address_entity.dart';

class AddressCard extends StatelessWidget {
  final AddressEntity address;

  const AddressCard({super.key, required this.address});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSize.s16),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: BorderRadius.circular(AppSize.r20),
        border: Border.all(
          color: address.isDefault
              ? context.colorScheme.primary.withValues(alpha: 0.3)
              : context.colorScheme.outlineVariant.withValues(alpha: 0.2),
          width: address.isDefault ? 1.5 : 1,
        ),
      ),
      child: InkWell(
        onTap: address.isDefault
            ? null
            : () => _showDefaultConfirmation(context),
        borderRadius: BorderRadius.circular(AppSize.r20),
        child: Padding(
          padding: const EdgeInsets.all(AppSize.s16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      AppSvgIcon(
                        iconName: address.label.toLowerCase() == 'home'
                            ? 'AssetsManager.icHome'
                            : 'AssetsManager.icWork',
                        size: AppSize.i14,
                        color: address.isDefault
                            ? context.colorScheme.primary
                            : context.colorScheme.onSurfaceVariant,
                      ),
                      AppSize.s8.horizontalSpace,
                      Text(
                        address.label,
                        style: TextStyleManager.createCustomFontStyle(
                          context,
                          fontSize: FontSize.s14,
                          fontWeight: FontWeightManager.black,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  if (address.isDefault)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSize.s8,
                        vertical: AppSize.s4,
                      ),
                      decoration: BoxDecoration(
                        color: context.colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(AppSize.r8),
                      ),
                      child: Text(
                        'DEFAULT',
                        style: context.textTheme.labelMedium?.copyWith(
                          color: context.colorScheme.primary,
                        ),
                      ),
                    ),
                  AppSize.s8.horizontalSpace,
                  GestureDetector(
                    onTap: () => _showDeleteConfirmation(context),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSize.s10,
                        vertical: AppSize.s4,
                      ),
                      decoration: BoxDecoration(
                        color: context.colorScheme.errorContainer,
                        borderRadius: BorderRadius.circular(AppSize.r8),
                      ),
                      child: Text(
                        'Delete',
                        style: context.textTheme.bodyMedium?.copyWith(
                          color: context.colorScheme.error,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              AppSize.s12.verticalSpace,
              Text(
                '${address.building}, ${address.street}, ${address.city}, ${address.state}',
                style: context.textTheme.bodyMedium?.copyWith(
                  color: context.colorScheme.onSurfaceVariant,
                ),
              ),
              AppSize.s8.verticalSpace,
              Row(
                children: [
                  AppSvgIcon(
                    iconName: AssetsManager.icPhone,
                    size: AppSize.i14,
                    color: context.colorScheme.onSurfaceVariant,
                  ),
                  AppSize.s4.horizontalSpace,
                  Text(
                    address.phone,
                    style: context.textTheme.labelSmall?.copyWith(
                      color: context.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showDefaultConfirmation(BuildContext context) {
    showConfirmationDialog(
      context,
      title: 'Set as Default?',
      message: 'Are you sure you want to make this your primary address?',
      confirmText: 'Yes, Set Default',
      confirmColor: context.colorScheme.primary,
      onConfirm: () {
        Navigator.pop(context);
      },
    );
  }

  void _showDeleteConfirmation(BuildContext context) {
    showConfirmationDialog(
      context,
      title: 'Delete Address?',
      message: 'This action cannot be undone. Are you sure?',
      confirmText: 'Delete',
      confirmColor: context.colorScheme.error,
      onConfirm: () {
        Navigator.pop(context);
      },
    );
  }
}
