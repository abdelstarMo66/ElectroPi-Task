import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mzady/core/routing/routes.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/widgets/custom_app_bar.dart';
import 'package:mzady/features/profile/presentation/logic/profile_cubit.dart';
import 'package:mzady/features/profile/presentation/logic/profile_states.dart';
import 'package:mzady/features/profile/presentation/widgets/address_card.dart';

class MyAddressesScreen extends StatelessWidget {
  const MyAddressesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('My Addresses'),
        actions: [
          IconButton(
            onPressed: () => context.push(Routes.addNewAddress),
            icon: Icon(
              Icons.add_location_alt_outlined,
              color: context.colorScheme.primary,
            ),
          ),
        ],
      ),
      body: BlocBuilder<ProfileCubit, ProfileStates>(
        builder: (context, state) {
          final user = context.read<ProfileCubit>().user;

          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: user?.addresses.length,
            itemBuilder: (context, index) {
              if (user?.addresses == null || index >= user!.addresses.length) {
                return const SizedBox.shrink();
              }
              return AddressCard(address: user.addresses[index]);
            },
          );
        },
      ),
    );
  }
}
