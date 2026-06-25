import 'package:flutter/material.dart';
import 'package:mzady/core/themes/color_manager.dart';
import 'package:mzady/core/themes/font_manager.dart';
import 'package:mzady/core/themes/style_manager.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/egypt_governorate.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';
import 'package:mzady/core/widgets/custom_app_bar.dart';
import 'package:mzady/core/widgets/custom_text_field.dart';

class AddNewAddressScreen extends StatefulWidget {
  const AddNewAddressScreen({super.key});

  @override
  State<AddNewAddressScreen> createState() => _AddNewAddressScreenState();
}

class _AddNewAddressScreenState extends State<AddNewAddressScreen> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _streetController = TextEditingController();
  final TextEditingController _buildingController = TextEditingController();
  final TextEditingController _flatController = TextEditingController();

  String selectedLabel = 'Home';
  String selectedCountry = 'Egypt';
  String? selectedState;
  String? selectedCity;
  bool isDefault = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('Add New Address'),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Save',
              style: context.textTheme.headlineLarge?.copyWith(
                color: context.colorScheme.primary,
              ),
            ),
          ),
          AppSize.s8.horizontalSpace,
        ],
      ),
      body: SingleChildScrollView(
        padding: AppPadding.screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildSectionHeader('ADDRESS LABEL'),
            AppSize.s12.verticalSpace,
            Row(
              children: [
                buildLabelChip('Home', 'AssetsManager.icHome'),
                const SizedBox(width: 12),
                buildLabelChip('Office', 'AssetsManager.icWork'),
              ],
            ),
            AppSize.s32.verticalSpace,
            buildSectionHeader('ADDRESS DETAILS'),
            AppSize.s16.verticalSpace,
            buildSelectionField(
              label: 'Country',
              value: selectedCountry,
              onTap: () {},
            ),
            Row(
              children: [
                Expanded(
                  child: buildSelectionField(
                    label: 'State',
                    value: selectedState ?? 'Select State',
                    onTap: () => _showSelectionSheet(
                      title: 'Select State',
                      items: EgyptData.governorateNamesEn,
                      onSelect: (val) => setState(() {
                        selectedState = val;
                        selectedCity = null;
                      }),
                      currentValue: selectedState,
                    ),
                  ),
                ),
                AppSize.s16.horizontalSpace,
                Expanded(
                  child: buildSelectionField(
                    label: 'City',
                    value: selectedCity ?? 'Select City',
                    onTap: () {
                      if (selectedState == null) return;
                      _showSelectionSheet(
                        title: 'Select City',
                        items: EgyptData.getCitiesForGovernorateEn(
                          selectedState!,
                        ).map((c) => c.nameEn).toList(),
                        onSelect: (val) => setState(() => selectedCity = val),
                        currentValue: selectedCity,
                      );
                    },
                  ),
                ),
              ],
            ),
            buildFieldLabel('Street Name'),
            CustomTextField(
              controller: _streetController,
              hintText: 'e.g. Abbas El Akkad St.',
            ),
            AppSize.s16.verticalSpace,
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildFieldLabel('Building'),
                      CustomTextField(
                        controller: _buildingController,
                        hintText: 'No.',
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildFieldLabel('Flat'),
                      CustomTextField(
                        controller: _flatController,
                        hintText: 'No.',
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            AppSize.s16.verticalSpace,
            buildFieldLabel('Phone Number'),
            CustomTextField(
              controller: _phoneController,
              hintText: '+20 123 456 789',
              keyboardType: TextInputType.phone,
            ),
            AppSize.s32.verticalSpace,
            buildDefaultSwitch(),
            AppSize.s32.verticalSpace,
          ],
        ),
      ),
    );
  }

  void _showSelectionSheet({
    required String title,
    required List<String> items,
    required String? currentValue,
    required Function(String) onSelect,
  }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppColors.transparent,
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
            color: context.colorScheme.surface,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(AppSize.r32),
            ),
          ),
          padding: EdgeInsets.only(
            top: AppSize.s12,
            left: AppSize.s24,
            right: AppSize.s24,
            bottom: MediaQuery.of(context).viewInsets.bottom + AppSize.s24,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: AppSize.s40,
                height: AppSize.s4,
                decoration: BoxDecoration(
                  color: context.colorScheme.outlineVariant,
                  borderRadius: BorderRadius.circular(AppSize.r12),
                ),
              ),
              AppSize.s20.verticalSpace,
              Text(
                title,
                style: context.textTheme.displaySmall?.copyWith(
                  color: context.colorScheme.primary,
                ),
              ),
              AppSize.s16.verticalSpace,
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.3,
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    final isSelected = item == currentValue;

                    return Padding(
                      padding: const EdgeInsets.only(bottom: AppSize.s12),
                      child: InkWell(
                        onTap: () {
                          onSelect(item);
                          Navigator.pop(context);
                        },
                        borderRadius: BorderRadius.circular(AppSize.r16),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppSize.s20,
                            vertical: AppSize.s18,
                          ),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? context.colorScheme.primary.withValues(
                                    alpha: AppSize.op0_1,
                                  )
                                : context.colorScheme.surfaceContainerLow,
                            borderRadius: BorderRadius.circular(AppSize.r16),
                            border: Border.all(
                              color: isSelected
                                  ? context.colorScheme.primary
                                  : Colors.transparent,
                              width: AppSize.s1_5,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                item,
                                style: TextStyleManager.createCustomFontStyle(
                                  context,
                                  fontSize: FontSize.s14,
                                  fontWeight: isSelected
                                      ? FontWeightManager.bold
                                      : FontWeightManager.regular,
                                  color: isSelected
                                      ? context.colorScheme.primary
                                      : null,
                                ),
                              ),
                              if (isSelected)
                                Icon(
                                  Icons.check_circle_rounded,
                                  color: context.colorScheme.primary,
                                )
                              else
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: AppSize.i14,
                                  color: context.colorScheme.onSurfaceVariant,
                                ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget buildSectionHeader(String title) {
    return Text(
      title.toUpperCase(),
      style: TextStyleManager.createCustomFontStyle(
        context,
        fontSize: FontSize.s10,
        color: context.colorScheme.primary,
        fontWeight: FontWeightManager.black,
        letterSpacing: AppSize.s1_5,
      ),
    );
  }

  Widget buildFieldLabel(String label) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSize.s8),
      child: Text(
        label,
        style: context.textTheme.labelMedium?.copyWith(
          color: context.colorScheme.onSurfaceVariant,
        ),
      ),
    );
  }

  Widget buildLabelChip(String label, String icon) {
    final bool isSelected = selectedLabel == label;
    return GestureDetector(
      onTap: () => setState(() => selectedLabel = label),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSize.s14,
          vertical: AppSize.s8,
        ),
        decoration: BoxDecoration(
          color: isSelected
              ? context.colorScheme.primary
              : context.colorScheme.surface,
          borderRadius: BorderRadius.circular(AppSize.r12),
          border: Border.all(
            color: isSelected
                ? context.colorScheme.primary
                : context.colorScheme.outlineVariant,
          ),
        ),
        child: Row(
          children: [
            AppSvgIcon(
              iconName: icon,
              size: AppSize.i14,
              color: isSelected
                  ? context.colorScheme.surface
                  : context.colorScheme.onSurfaceVariant,
            ),
            AppSize.s8.horizontalSpace,
            Text(
              label,
              style: context.textTheme.bodyMedium?.copyWith(
                color: isSelected
                    ? context.colorScheme.surface
                    : context.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSelectionField({
    required String label,
    required String value,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSize.s16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildFieldLabel(label),
          InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(AppSize.r12),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSize.s16,
                vertical: AppSize.s14,
              ),
              decoration: BoxDecoration(
                color: context.colorScheme.surfaceContainerLow,
                border: Border.all(
                  color: context.colorScheme.outlineVariant,
                  width: AppSize.s1_5,
                ),
                borderRadius: BorderRadius.circular(AppSize.r12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      value,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.bodyMedium?.copyWith(
                        color: value.contains('Select')
                            ? context.colorScheme.onSurfaceVariant.withValues(
                                alpha: AppSize.op0_5,
                              )
                            : context.colorScheme.onSurface,
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: 270 * (3.14 / 180),
                    child: AppSvgIcon(
                      iconName: AssetsManager.icArrowLeft,
                      size: AppSize.i14,
                      color: context.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDefaultSwitch() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Set as Default', style: context.textTheme.titleLarge),
            Text(
              'Use this address for all auctions',
              style: context.textTheme.labelSmall?.copyWith(
                color: context.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
        Switch.adaptive(
          value: isDefault,
          onChanged: (v) => setState(() => isDefault = v),
          activeThumbColor: context.colorScheme.primary,
          activeTrackColor: context.colorScheme.primary.withValues(
            alpha: AppSize.op0_3,
          ),
          inactiveTrackColor: context.colorScheme.outlineVariant.withValues(
            alpha: AppSize.op0_4,
          ),
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
      ],
    );
  }
}
