import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mzady/core/routing/routes.dart';
import 'package:mzady/core/utils/assets_manager.dart';
import 'package:mzady/core/utils/extensions.dart';
import 'package:mzady/core/widgets/app_svg_icon.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      FlutterNativeSplash.remove();
    });

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2700),
    );

    _scaleAnimation = Tween<double>(
      begin: 0.3,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.elasticOut));

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.7, curve: Curves.easeIn),
      ),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.7),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));

    _controller.forward();

    Timer(const Duration(seconds: 4), () {
      if (mounted) {
        context.goNamed(Routes.login);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeTransition(
              opacity: _fadeAnimation,
              child: SlideTransition(
                position: _slideAnimation,
                child: ScaleTransition(
                  scale: _scaleAnimation,
                  child: const AppSvgIcon(
                    iconName: AssetsManager.icLogo,
                    size: 180.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'MZADY',
                  textStyle: GoogleFonts.lobsterTwo(
                    fontSize: 64,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 10,
                    color: context.colorScheme.primary,
                  ),
                  speed: const Duration(milliseconds: 200),
                  cursor: '',
                ),
              ],
              isRepeatingAnimation: false,
            ),
          ],
        ),
      ),
    );
  }
}
