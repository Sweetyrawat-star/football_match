import 'package:flutter/material.dart';
import 'package:football_match_live/core/utils/size_utils.dart';

import '../../../core/utils/image_constant.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_image_view.dart';

class LeagueWidget extends StatefulWidget {
  LeagueWidget({Key? key})
      : super(
          key: key,
        );

  @override
  State<LeagueWidget> createState() => _LeagueWidgetState();
}

class _LeagueWidgetState extends State<LeagueWidget> {
  List imageList = [
    ImageConstant.imgGlobe,
    ImageConstant.leagueA,
    ImageConstant.football,
    ImageConstant.premerLeague,
    ImageConstant.imgGlobe,
    ImageConstant.leagueA,
    ImageConstant.football,
    ImageConstant.premerLeague
  ];
  List imageTitle = [
    "Premier League",
    "Champions",
    "Serie A Italia",
    "NBA",
    "Champions",
    "Premier League",
    "Serie A Italia",
    "NBA",
  ];
  int selectedImageIndex =
      0; // Initialize with 0 to select the first item by default

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left:8,right:8,top:8),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedImageIndex = index;
                });
              },
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 4.h, vertical: 5.v),
                decoration: selectedImageIndex == index
                    ? AppDecoration.outlineIndigo.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL15,
                      )
                    : null,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconButton(
                      height: 60.adaptSize,
                      width: 60.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      child: CustomImageView(
                        imagePath: imageList[index],
                      ),
                    ),
                    Text(imageTitle[index],
                        style: CustomTextStyles.labelMediumSemiBold
                            .copyWith(color: appTheme.gray90003))
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}


