import 'package:flutter/material.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/utils/size_manager.dart';
import 'package:mzady/features/profile/presentation/widgets/build_profile_action_buttons.dart';
import 'package:mzady/features/profile/presentation/widgets/build_profile_information.dart';

class ProfileInformation extends StatelessWidget {
  const ProfileInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BuildProfileInformation(),
        AppSize.s24.verticalSpace,
        const BuildProfileActionButtons(),
      ],
    );
  }
}
