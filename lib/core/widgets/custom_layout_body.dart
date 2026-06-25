import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app/cubit/app_cubit.dart';

class CustomLayoutBody extends StatelessWidget {
  const CustomLayoutBody({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<UserScrollNotification>(
      onNotification: (notification) {
        final ScrollDirection direction = notification.direction;
        final cubit = context.read<AppCubit>();

        if (direction == ScrollDirection.reverse) {
          cubit.changeNavBarVisibility(false);
        } else if (direction == ScrollDirection.forward) {
          cubit.changeNavBarVisibility(true);
        }
        return true;
      },
      child: child,
    );
  }
}
