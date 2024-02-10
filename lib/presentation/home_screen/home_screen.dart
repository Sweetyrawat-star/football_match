import 'package:football_match_live/presentation/home_screen/widgets/build_league.dart';
import 'package:football_match_live/presentation/search_screen/search_screen.dart';

import '../../widgets/custom_outlined_button.dart';
import '../home_screen/widgets/cardlist_item_widget.dart';
import '../home_screen/widgets/listlist_item_widget.dart';
import '../home_screen/widgets/ongoingupcomingchipview_item_widget.dart';
import '../home_screen/widgets/viewhierarchylist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:football_match_live/core/app_export.dart';
import 'package:football_match_live/widgets/custom_elevated_button.dart';
import 'package:football_match_live/widgets/custom_icon_button.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildTwentyStack(context),
                SizedBox(height: 30.v),
                _buildOngoingUpcomingChipView(context),
                SizedBox(height: 21.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 23.h,
                    right: 14.h,
                  ),
                  child: _buildNewsTodayRow(
                    context,
                    newsText: "League",
                    seeAllText: "See All",
                  ),
                ),
                SizedBox(height: 3.v),
                LeagueWidget(),
                _buildRowStack(context),
                SizedBox(height: 22.v),
                _buildFrameRow(context),
                SizedBox(height: 13.v),
                _buildFrameStack(context),
                SizedBox(height: 12.v),
                _buildViewHierarchyList(context),
                SizedBox(height: 33.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 22.h,
                    right: 14.h,
                  ),
                  child: _buildNewsTodayRow(
                    context,
                    newsText: "News Today",
                    seeAllText: "See All",
                  ),
                ),
                SizedBox(height: 14.v),
                _buildListList(context),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildWatchNowButton(BuildContext context) {
    return CustomElevatedButton(
      height: 30.v,
      width: 100.h,
      text: "Watch Now",
      buttonStyle: CustomButtonStyles.fillBlue,
      buttonTextStyle: CustomTextStyles.labelLargeWhiteA700,
    );
  }

  /// Section Widget
  Widget _buildTwentyStack(BuildContext context) {
    return SizedBox(
      height: 310.v,
      child: Stack(
        fit: StackFit.loose,
        clipBehavior: Clip.hardEdge,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 250,
              padding: EdgeInsets.symmetric(
                horizontal: 21.h,
                vertical: 14.v,
              ),
              decoration: AppDecoration.fillBlue.copyWith(
                borderRadius: BorderRadiusStyle.customBorderBL50,
              ),
              child:  new Expanded(
                child: TextField(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchScreen()));
                  },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Search Matches, League ...",
                    filled: true,
                    hintStyle: CustomTextStyles.titleMediumBluegray300,
                    prefixIcon: Container(
                      margin: EdgeInsets.fromLTRB(16.h, 17.v, 8.h, 17.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgIconSearch,
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                      ),
                    ),
                    prefixIconConstraints: BoxConstraints(
                      maxHeight: 52.v,
                    ),
                    suffixIcon: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 17.v, 17.h, 17.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgSettings,
                        height: 18.v,
                        width: 26.h,
                      ),
                    ),
                    suffixIconConstraints: BoxConstraints(
                      maxHeight: 52.v,
                    ),
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 17.v),
                    fillColor: appTheme.gray50,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.h),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.h),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.h),
                      borderSide: BorderSide(
                        color: appTheme.blue80001,
                        width: 1,
                      ),
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                ),
              )
            ),
          ),

          Positioned(
            top: 120,left: 30,
            child: SizedBox(
              height: 183.v,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(19.h)),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgImage47,
                      height: 183.v,
                      width: 360.h,
                      radius: BorderRadius.circular(
                        19.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 14.h,
                        right: 137.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 6.adaptSize,
                                width: 6.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 3.v),
                                decoration: BoxDecoration(
                                  color: appTheme.red600,
                                  borderRadius: BorderRadius.circular(
                                    3.h,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text(
                                  "Live now",
                                  style: theme.textTheme.labelMedium,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 22.v),
                          Text(
                            "Premier League",
                            style: CustomTextStyles.labelLargeBluegray400,
                          ),
                          SizedBox(height: 1.v),
                          SizedBox(
                            width: 175.h,
                            child: Text(
                              "Manchester united against chelsea final",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleMedium!.copyWith(
                                height: 1.44,
                              ),
                            ),
                          ),
                          SizedBox(height: 9.v),
                          _buildWatchNowButton(context),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOngoingUpcomingChipView(BuildContext context) {
    return Wrap(
      runSpacing: 5.v,
      spacing: 5.h,
      children: [
        OngoingupcomingchipviewItemWidget(
          text: 'Ongoing',
          isSelected: true, // Change to false for upcoming
        ),
        OngoingupcomingchipviewItemWidget(
          text: 'Upcoming',
          isSelected: false, // Change to true for upcoming
        ),
      ],
    );
  }




  /// Section Widget
  Widget _buildRowStack(BuildContext context) {
    return Container(
   decoration: AppDecoration. outlineIndigo5001,
      height: 280.v,
      child: Padding(
        padding: const EdgeInsets.only(left:15.0,right: 15,top: 15),
        child: Column(
        //  alignment: Alignment.bottomRight,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomIconButton(
                  height: 66.adaptSize,
                  width: 66.adaptSize,
                  decoration: IconButtonStyleHelper.fillWhiteA,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgSettingsBlue800,
                  ),
                ),
                Text(
                  "Premier League",
                  style: CustomTextStyles.titleMediumGray900,
                ),
                Spacer(),
                Text(
                  "See All",
                  style: CustomTextStyles.titleSmallBlue80001,
                ),
              ],
            ),
            Container(
              height: 180.v,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    width: 12.h,
                  );
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return CardlistItemWidget();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 23.h,
        right: 12.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPremierLeague1,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(bottom: 3.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 2.v,
            ),
            child: Text(
              "Today Match",
              style: CustomTextStyles.titleMediumGray900,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 3.v),
            child: Text(
              "See All",
              style: CustomTextStyles.titleSmallBlue80001,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwelve(BuildContext context) {
    return  CustomOutlinedButton(
      width: 36.h,
      text: "1 : 2",
      alignment: Alignment.center,
    );
  }

  /// Section Widget
  Widget _buildWatchNowButton1(BuildContext context) {
    return Container(
        height: 40.v,
        width: 147.h,
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder26,
        ),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Watch Now",
                style: CustomTextStyles.titleSmallGray90001,
              ),
              SizedBox(width: 10,),
              CircleAvatar(
                radius: 15,
                backgroundColor: appTheme.blue80001,
                child: CustomImageView(
                  imagePath: ImageConstant.imgVideo,
                  height: 20.0.v,
                  width: 20.0.h,
                ),
              ),
            ]));
  }

  /// Section Widget
  Widget _buildFrameStack(BuildContext context) {
    return SizedBox(
      height: 104.v,
      width: 327.h,
      child: Stack(
        fit: StackFit.loose,
        clipBehavior: Clip.hardEdge,
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 30.v),
              padding: EdgeInsets.symmetric(
                horizontal: 29.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.fillGray50.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 7.v,
                      bottom: 6.v,
                    ),
                    child: Text(
                      "Wolves",
                      style: CustomTextStyles.titleSmallGray90001,
                    ),
                  ),
                  Container(
                    width: 80.h,
                    margin: EdgeInsets.only(left: 8.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgThumbsUp,
                          height: 32.adaptSize,
                          width: 32.adaptSize,
                        ),
                        _buildTwelve(context),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.ppol,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    margin: EdgeInsets.only(left: 12.h),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 9.v,
                      bottom: 4.v,
                    ),
                    child: Text(
                      "Liverpool",
                      style: CustomTextStyles.titleSmallGray90001,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(top: 49,
              child: _buildWatchNowButton1(context)),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildViewHierarchyList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 12.v,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return ViewhierarchylistItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildListList(BuildContext context) {
    return SizedBox(
      height: 230.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 23.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 12.h,
          );
        },
        itemCount: 6,
        itemBuilder: (context, index) {
          return ListlistItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.whiteA70001,
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgGroup162861,
        height: 24.v,
        width: 280.h,
        margin: EdgeInsets.fromLTRB(48.h, 23.v, 41.h, 22.v),
      ),
    );
  }

  /// Common widget
  Widget _buildNewsTodayRow(
    BuildContext context, {
    required String newsText,
    required String seeAllText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          newsText,
          style: CustomTextStyles.titleMediumGray900.copyWith(
            color: appTheme.gray900,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 3.v),
          child: Text(
            seeAllText,
            style: CustomTextStyles.titleSmallBlue80001.copyWith(
              color: appTheme.blue80001,
            ),
          ),
        ),
      ],
    );
  }
}
