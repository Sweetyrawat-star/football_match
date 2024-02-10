import 'package:flutter/material.dart';
import 'package:football_match_live/core/app_export.dart';

class ListlistItemWidget extends StatelessWidget {
  const ListlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 191.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle22492,
              height: 135.v,
              width: 191.h,
              radius: BorderRadius.circular(
                8.h,
              ),
            ),
            SizedBox(height: 11.v),
            Text(
              "Premier League predictions",
              style: CustomTextStyles.labelLargeGray900,
            ),
            SizedBox(height: 3.v),
            SizedBox(
              width: 174.h,
              child: Text(
                "Lorem Ipsum has been the industry's standard dummy text ever since the. ",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.labelMediumBluegray400.copyWith(
                  height: 1.80,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
