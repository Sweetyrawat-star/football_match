import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Label text style
  static get labelLargeBluegray300 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray300,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeBluegray400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelLargeGray900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeGreenA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.greenA700,
      );
  static get labelLargeGreenA700Medium => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.greenA700,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelLargeWhiteA70001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA70001,
      );
  static get labelMediumBlue80001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blue80001,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumBluegray400 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray400,
      );
  static get labelMediumGray900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray900.withOpacity(0.6),
      );
  static get labelMediumSemiBold => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumBlue80001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blue80001,
      );
  static get titleMediumBluegray300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray300,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBluegray800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray800,
      );
  static get titleMediumGray500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get titleMediumGray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 16.fSize,
      );
  static get titleMediumGray90004 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90004,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray90004_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90004,
      );
  static get titleMediumGray900Medium => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumUrbanistGray90004 =>
      theme.textTheme.titleMedium!.urbanist.copyWith(
        color: appTheme.gray90004,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallBlue80001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blue80001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlue80001_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blue80001,
      );
  static get titleSmallBluegray300 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray300,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallMedium => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get urbanist {
    return copyWith(
      fontFamily: 'Urbanist',
    );
  }

  TextStyle get plusJakartaSans {
    return copyWith(
      fontFamily: 'Plus Jakarta Sans',
    );
  }
}
