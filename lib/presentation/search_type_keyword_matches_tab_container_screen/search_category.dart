import 'package:flutter/material.dart';
import 'package:football_match_live/core/utils/size_utils.dart';
import '../../../core/utils/image_constant.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/custom_text_style.dart';
import '../../../widgets/custom_image_view.dart';
import '../../theme/theme_helper.dart';

class SearchCategory extends StatefulWidget {
  SearchCategory({Key? key})
      : super(
    key: key,
  );

  @override
  State<SearchCategory> createState() => _SearchCategoryState();
}

class _SearchCategoryState extends State<SearchCategory> {
  List imageTitle = [
    "Top",
    "Matches",
    "Competitions",
    "Teams",
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
      height: 40,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: imageTitle.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left:8,right:8,top:8),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedImageIndex = index;
                });
              },
              child:
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 7.v,
                ),
                decoration: selectedImageIndex == index?AppDecoration.fillBlue.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder16,
                ): AppDecoration.outlineBlue.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder16,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    selectedImageIndex == index?CustomImageView(
                      imagePath: ImageConstant.imgSignalWhiteA70001,
                      height: 12.adaptSize,
                      width: 12.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 2.v),
                    ):SizedBox(),
                    selectedImageIndex == index?SizedBox(width: 5,)
                    :SizedBox(),
                    Text(
                      imageTitle[index],
                      style:  selectedImageIndex == index? CustomTextStyles.labelLargeWhiteA70001: theme.textTheme.labelLarge,
                    ),
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


