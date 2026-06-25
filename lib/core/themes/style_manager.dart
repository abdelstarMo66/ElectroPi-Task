import 'package:flutter/material.dart';

import 'font_manager.dart';

class TextStyleManager {
  static TextStyle _getTextStyle({
    required double fontSize,
    required FontWeight fontWeight,
    Color? color,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: FontConstants.fontFamily,
      color: color,
    );
  }

  static TextStyle font24Bold({Color? color}) => _getTextStyle(
    fontSize: FontSize.s24,
    fontWeight: FontWeightManager.bold,
    color: color,
  );

  static TextStyle font20Bold({Color? color}) => _getTextStyle(
    fontSize: FontSize.s20,
    fontWeight: FontWeightManager.bold,
    color: color,
  );

  static TextStyle font18Bold({Color? color}) => _getTextStyle(
    fontSize: FontSize.s18,
    fontWeight: FontWeightManager.bold,
    color: color,
  );

  static TextStyle font16Bold({Color? color}) => _getTextStyle(
    fontSize: FontSize.s16,
    fontWeight: FontWeightManager.bold,
    color: color,
  );

  static TextStyle font16SemiBold({Color? color}) => _getTextStyle(
    fontSize: FontSize.s16,
    fontWeight: FontWeightManager.semiBold,
    color: color,
  );

  static TextStyle font16Medium({Color? color}) => _getTextStyle(
    fontSize: FontSize.s16,
    fontWeight: FontWeightManager.medium,
    color: color,
  );

  static TextStyle font14Bold({Color? color}) => _getTextStyle(
    fontSize: FontSize.s14,
    fontWeight: FontWeightManager.bold,
    color: color,
  );

  static TextStyle font14SemiBold({Color? color}) => _getTextStyle(
    fontSize: FontSize.s14,
    fontWeight: FontWeightManager.semiBold,
    color: color,
  );

  static TextStyle font14Medium({Color? color}) => _getTextStyle(
    fontSize: FontSize.s14,
    fontWeight: FontWeightManager.medium,
    color: color,
  );

  static TextStyle font14Regular({Color? color}) => _getTextStyle(
    fontSize: FontSize.s14,
    fontWeight: FontWeightManager.regular,
    color: color,
  );

  static TextStyle font12SemiBold({Color? color}) => _getTextStyle(
    fontSize: FontSize.s12,
    fontWeight: FontWeightManager.semiBold,
    color: color,
  );

  static TextStyle font12Regular({Color? color}) => _getTextStyle(
    fontSize: FontSize.s12,
    fontWeight: FontWeightManager.regular,
    color: color,
  );

  static TextStyle font12Medium({Color? color}) => _getTextStyle(
    fontSize: FontSize.s12,
    fontWeight: FontWeightManager.medium,
    color: color,
  );

  static TextStyle font10Bold({Color? color}) => _getTextStyle(
    fontSize: FontSize.s10,
    fontWeight: FontWeightManager.bold,
    color: color,
  );

  static TextStyle font10Regular({Color? color}) => _getTextStyle(
    fontSize: FontSize.s10,
    fontWeight: FontWeightManager.regular,
    color: color,
  );

  static TextStyle createCustomFontStyle(
    BuildContext context, {
    required double fontSize,
    required FontWeight fontWeight,
    Color? color,
    double? height,
    double? letterSpacing,
    TextDecoration? decoration,
    double? decorationThickness,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: FontConstants.fontFamily,
      color: color,
      height: height,
      letterSpacing: letterSpacing,
      decoration: decoration,
      decorationThickness: decorationThickness,
      textBaseline: TextBaseline.alphabetic,
    );
  }
}
