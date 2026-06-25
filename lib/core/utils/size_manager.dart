import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract final class AppSize {
  static const double s0_5 = 0.5;
  static const double s1_5 = 1.5;
  static const double s2 = 2.0;
  static const double s4 = 4.0;
  static const double s6 = 6.0;
  static const double s8 = 8.0;
  static const double s10 = 10.0;
  static const double s12 = 12.0;
  static const double s14 = 14.0;
  static const double s16 = 16.0;
  static const double s18 = 18.0;
  static const double s20 = 20.0;
  static const double s24 = 24.0;
  static const double s32 = 32.0;
  static const double s40 = 40.0;
  static const double s48 = 48.0;
  static const double s55 = 55.0;
  static const double s60 = 60.0;
  static const double s64 = 64.0;
  static const double s72 = 72.0;
  static const double s90 = 90.0;

  static const double r4 = 4.0;
  static const double r8 = 8.0;
  static const double r12 = 12.0;
  static const double r16 = 16.0;
  static const double r20 = 20.0;
  static const double r24 = 24.0;
  static const double r32 = 32.0;
  static const double r48 = 48.0;

  static const double i14 = 14.0;
  static const double i18 = 18.0;
  static const double i24 = 24.0;
  static const double i28 = 28.0;
  static const double i32 = 32.0;
  static const double i40 = 40.0;
  static const double i48 = 48.0;
  static const double i55 = 55.0;
  static const double i60 = 60.0;
  static const double i64 = 64.0;
  static const double i72 = 72.0;

  static const double op0_0 = 0.0;
  static const double op0_05 = 0.05;
  static const double op0_1 = 0.1;
  static const double op0_13 = 0.13;
  static const double op0_15 = 0.15;
  static const double op0_2 = 0.2;
  static const double op0_25 = 0.25;
  static const double op0_3 = 0.3;
  static const double op0_35 = 0.35;
  static const double op0_4 = 0.4;
  static const double op0_5 = 0.5;
  static const double op0_6 = 0.6;
  static const double op0_65 = 0.65;
  static const double op0_7 = 0.7;
  static const double op0_8 = 0.8;
  static const double op0_85 = 0.85;
  static const double op0_9 = 0.9;
  static const double op0_95 = 0.95;
  static const double op1_0 = 1.0;
}

abstract final class AppPadding {
  static EdgeInsets screenPadding = EdgeInsets.symmetric(
    horizontal: AppSize.s24.w,
    vertical: AppSize.s18.h,
  );
}

abstract final class AppConstants {
  static const double productCardAspectRatio = 0.75;
  static const double bannerAspectRatio = 16 / 9;
  static const int animationDurationMs = 300;
}

abstract final class AppOffest {
  static const Offset offset0_2 = Offset(0, 2);
  static const Offset offset0_4 = Offset(0, 4);
  static const Offset offset0_6 = Offset(0, 6);
  static const Offset offset0_8 = Offset(0, 8);
  static const Offset offset0_10 = Offset(0, 10);
}
