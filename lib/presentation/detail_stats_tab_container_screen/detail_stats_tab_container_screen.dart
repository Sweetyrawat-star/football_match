import 'package:flutter/material.dart';
import 'package:football_match_live/core/app_export.dart';
import 'package:football_match_live/presentation/detail_stats_page/detail_stats_page.dart';
import 'package:football_match_live/widgets/app_bar/appbar_leading_image.dart';
import 'package:football_match_live/widgets/app_bar/appbar_title.dart';
import 'package:football_match_live/widgets/app_bar/appbar_trailing_image.dart';
import 'package:football_match_live/widgets/app_bar/custom_app_bar.dart';
import 'package:football_match_live/widgets/custom_outlined_button.dart';

class DetailStatsTabContainerScreen extends StatefulWidget {
  const DetailStatsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  DetailStatsTabContainerScreenState createState() =>
      DetailStatsTabContainerScreenState();
}

class DetailStatsTabContainerScreenState
    extends State<DetailStatsTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabController;
  int selectedIndex = 0; // Initially selected index

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 6, vsync: this);
    tabController.addListener(() {
      setState(() {
        selectedIndex = tabController.index; // Update selected index
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildMatchDetails(context),
                SizedBox(height: 34.v),
                _buildTabview(context),
                SizedBox(
                  height: 554.v,
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      DetailStatsPage(),
                      DetailStatsPage(),
                      DetailStatsPage(),
                      DetailStatsPage(),
                      DetailStatsPage(),
                      DetailStatsPage(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: _buildFloatingActionButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildMatchDetails(BuildContext context) {
    return SizedBox(
      height: 249.v,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomAppBar(
            height: 205.v,
            leadingWidth: 48.h,
            leading: AppbarLeadingImage(
              onTap: (){
                Navigator.pop(context);
                FocusScope.of(context).unfocus();
              },
              imagePath: ImageConstant.imgArrowDownWhiteA700,
              margin: EdgeInsets.only(
                left: 24.h,
                top: 17.v,
                bottom: 164.v,
              ),
            ),
            centerTitle: true,
            title: AppbarTitle(
              text: "Detail Match",
              margin: EdgeInsets.only(
                top: 17.v,
                bottom: 164.v,
              ),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgNotification,
                margin: EdgeInsets.fromLTRB(24.h, 17.v, 24.h, 164.v),
              ),
            ],
            styleType: Style.bgFill,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 183.v,
              width: 327.h,
              margin: EdgeInsets.only(bottom: 2.v),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  16.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 3,
              margin: EdgeInsets.all(0),
              color: appTheme.whiteA700,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.circleBorder16,
              ),
              child: Container(
                height: 183.v,
                width: 327.h,
                decoration: AppDecoration.outlineBlack90026.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder16,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage47,
                      height: 174.v,
                      width: 202.h,
                      alignment: Alignment.centerRight,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 27.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Stamford Bridge",
                              style: CustomTextStyles.titleSmallMedium,
                            ),
                            SizedBox(height: 4.v),
                            Text(
                              "Week 10",
                              style: CustomTextStyles.labelLargeBluegray300,
                            ),
                            SizedBox(height: 1.v),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 1.v),
                                  child: _buildClubDetails(
                                    context,
                                    userImage: ImageConstant.imgBadges01,
                                    typeTwentyFour: "Chelsea",
                                    typeSixteen: "Home",
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 19.v),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "1 : 1",
                                        style: theme.textTheme.headlineLarge,
                                      ),
                                      SizedBox(height: 6.v),
                                      CustomOutlinedButton(
                                        width: 48.h,
                                        text: "90+4",
                                        alignment: Alignment.center,
                                      ),
                                    ],
                                  ),
                                ),
                                _buildClubDetails(
                                  context,
                                  userImage: ImageConstant.imgImage9,
                                  typeTwentyFour: "Man Utd",
                                  typeSixteen: "Away",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return DefaultTabController(
        length: 6, // number of tabs
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: TabBar(
            padding: EdgeInsets.zero,
            controller: tabController,
            labelPadding: EdgeInsets.symmetric(horizontal: 5.0),
            indicator: BoxDecoration(),
            isScrollable: true,
            tabs: [
              _buildCustomTab("Starts", index: 0),
              _buildCustomTab("Overview", index: 1),
              _buildCustomTab("Lineups", index: 2),
              _buildCustomTab("H2H", index: 3),
              _buildCustomTab("Video", index: 4),
              _buildCustomTab("News", index: 5),
            ],
          ),
        ));
  }

  Widget _buildCustomTab(String text, {required int index}) {
    return Tab(
      child: Container(
        height: 35,
        width: 90,
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: selectedIndex == index
            ? AppDecoration.fillBlue.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder16,
              )
            : AppDecoration.outlineBlue.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder16,
              ),
        child: Center(
          child: Text(
            text,
            style: selectedIndex == index
                ? CustomTextStyles.labelLargeWhiteA70001
                : theme.textTheme.labelLarge,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return Container(
      height: 70,
      width: 170,padding: EdgeInsets.only(top: 20),
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder26,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Text(
            "Watch Now",
            style: CustomTextStyles.titleMediumBluegray800,
          ),
          SizedBox(width: 10,),
          CircleAvatar(
        radius: 20,
            backgroundColor: appTheme.blue80001,
            child: CustomImageView(
              imagePath: ImageConstant.imgVideo,
              height: 20.0.v,
              width: 20.0.h,
            ),
          ),
        ]));
  }

  /// Common widget
  Widget _buildClubDetails(
    BuildContext context, {
    required String userImage,
    required String typeTwentyFour,
    required String typeSixteen,
  }) {
    return Column(
      children: [
        CustomImageView(
          imagePath: userImage,
          height: 64.adaptSize,
          width: 64.adaptSize,
        ),
        SizedBox(height: 10.v),
        Text(
          typeTwentyFour,
          style: theme.textTheme.titleSmall!.copyWith(
            color: appTheme.gray900,
          ),
        ),
        SizedBox(height: 5.v),
        Text(
          typeSixteen,
          style: CustomTextStyles.labelLargeBluegray300.copyWith(
            color: appTheme.blueGray300,
          ),
        ),
      ],
    );
  }
}
