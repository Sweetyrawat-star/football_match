import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomSearchView extends StatelessWidget {
  CustomSearchView({
    Key? key,
    this.alignment,
    this.width,
    this.scrollPadding,
    this.controller,
    this.focusNode,
    this.autofocus = true,
    this.textStyle,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
    this.onChanged,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? width;

  final TextEditingController? scrollPadding;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;

  final bool? filled;

  final FormFieldValidator<String>? validator;

  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
      alignment: alignment ?? Alignment.center,
      child: searchViewWidget(context),
    )
        : searchViewWidget(context);
  }

  Widget searchViewWidget(BuildContext context) => SizedBox(
    width: width ?? double.maxFinite,
    child: TextFormField(
      scrollPadding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom),
      controller: controller,
      focusNode: focusNode ?? FocusNode(),
      autofocus: autofocus!,
      style: textStyle ?? CustomTextStyles.titleMediumGray900Medium,
      keyboardType: textInputType,
      maxLines: maxLines ?? 1,
      decoration: decoration,
      validator: validator,
      onChanged: (String value) {
        onChanged?.call(value);
      },
      onFieldSubmitted: (value) {
        // Hide the keyboard when "Done" button is pressed
        FocusScope.of(context).unfocus();
      },
    ),
  );
  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle ?? CustomTextStyles.titleMediumBluegray300,
        prefixIcon: prefix ??
            Container(
              margin: EdgeInsets.fromLTRB(16.h, 17.v, 8.h, 17.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgIconSearch,
                height: 18.adaptSize,
                width: 18.adaptSize,
              ),
            ),
        prefixIconConstraints: prefixConstraints ??
            BoxConstraints(
              maxHeight: 52.v,
            ),
        suffixIcon: suffix ??
            Container(
              margin: EdgeInsets.fromLTRB(30.h, 17.v, 17.h, 17.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgSettings,
                height: 18.v,
                width: 26.h,
              ),
            ),
        suffixIconConstraints: suffixConstraints ??
            BoxConstraints(
              maxHeight: 52.v,
            ),
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsets.symmetric(vertical: 17.v),
        fillColor: fillColor ?? appTheme.gray50,
        filled: filled,
        border: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(24.h),
              borderSide: BorderSide.none,
            ),
        enabledBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(24.h),
              borderSide: BorderSide.none,
            ),
        focusedBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(24.h),
              borderSide: BorderSide(
                color: appTheme.blue80001,
                width: 1,
              ),
            ),
      );
}
