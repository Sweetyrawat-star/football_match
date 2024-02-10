import 'package:flutter/material.dart';
import 'package:football_match_live/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue80001,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray90002,
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get fillWhiteA70001 => BoxDecoration(
        color: appTheme.whiteA70001,
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90026,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              20,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack90026 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90026,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              24,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlue => BoxDecoration(
        border: Border.all(
          color: appTheme.blue80001,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.gray50,
        border: Border.all(
          color: appTheme.gray200,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineIndigo => BoxDecoration(
        color: appTheme.gray50,
        border: Border.all(
          color: appTheme.indigo5001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineIndigo5001 => BoxDecoration(
        color: appTheme.gray50,
        border: Border(
          bottom: BorderSide(
            color: appTheme.indigo5001,
            width: 1.h,
          ),
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get circleBorder26 => BorderRadius.circular(
        26.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL50 => BorderRadius.vertical(
        bottom: Radius.circular(50.h),
      );
  static BorderRadius get customBorderTL15 => BorderRadius.vertical(
        top: Radius.circular(15.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder19 => BorderRadius.circular(
        19.h,
      );
  static BorderRadius get roundedBorder3 => BorderRadius.circular(
        3.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
