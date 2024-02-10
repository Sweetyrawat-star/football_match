import 'package:flutter/material.dart';
import 'package:football_match_live/core/app_export.dart';

// ignore: must_be_immutable
class CardlistItemWidget extends StatelessWidget {
  const CardlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 146.h,
      child: Align(
        alignment: Alignment.bottomRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 89.v,
              width: 146.h,
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder3,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgImage46,
                height: 88.v,
                width: 146.h,
                alignment: Alignment.center,
              ),
            ),
            SizedBox(height: 7.v),
            Text(
              "Premier League",
              style: theme.textTheme.labelMedium,
            ),
            SizedBox(height: 6.v),
            Text(
              "Man United vs Liverpool",
              style: CustomTextStyles.labelLargeBold,
            ),
            SizedBox(height: 6.v),
            Opacity(
              opacity: 0.7,
              child: Text(
                "Monday - Jun 24, 2023",
                style: CustomTextStyles.labelMediumGray900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
