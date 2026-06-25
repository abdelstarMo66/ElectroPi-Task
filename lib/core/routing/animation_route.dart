import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AnimationRoute {
  static Page<dynamic> fadeTransition({
    required GoRouterState state,
    required Widget child,
  }) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: CurveTween(curve: Curves.easeOutCubic).animate(animation),
          child: child,
        );
      },
      reverseTransitionDuration: const Duration(milliseconds: 200),
    );
  }
}
