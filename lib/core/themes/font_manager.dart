import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract final class FontConstants {
  static const String fontFamily = 'Cairo';
}

abstract final class FontWeightManager {
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;
  static const FontWeight black = FontWeight.w900;
}

class FontSize {
  static double s8 = 8.0.sp;
  static double s10 = 10.0.sp;
  static double s12 = 12.0.sp;
  static double s14 = 14.0.sp;
  static double s16 = 16.0.sp;
  static double s18 = 18.0.sp;
  static double s20 = 20.0.sp;
  static double s22 = 22.0.sp;
  static double s24 = 24.0.sp;
  static double s26 = 26.0.sp;
  static double s32 = 32.0.sp;
  static double s55 = 55.0.sp;
}
