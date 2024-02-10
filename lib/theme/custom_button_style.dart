import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlue => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blue80001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.h),
        ),
      );

  // Outline button style
  static ButtonStyle get outlineBlack => ElevatedButton.styleFrom(
        backgroundColor: appTheme.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.h),
        ),
        shadowColor: appTheme.black90026,
        elevation: 20,
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
  // Outline button style
  static ButtonStyle get outlineGreen => ElevatedButton.styleFrom(
    backgroundColor: Color(0xffDAE7E4),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.h),
    ),
   // shadowColor: appTheme.greenA700,
    elevation: 20,
  );
}
