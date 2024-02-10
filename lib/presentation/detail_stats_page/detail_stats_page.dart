import 'package:flutter/material.dart';
import 'package:football_match_live/core/app_export.dart';

// ignore_for_file: must_be_immutable
class DetailStatsPage extends StatefulWidget {
  const DetailStatsPage({Key? key})
      : super(
          key: key,
        );

  @override
  DetailStatsPageState createState() => DetailStatsPageState();
}

class DetailStatsPageState extends State<DetailStatsPage>
    with AutomaticKeepAliveClientMixin<DetailStatsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 46.v),
          Container(
            height: 462.v,
            margin: EdgeInsets.symmetric(horizontal: 24.h),
            child: Stack(
              children: [
                _buildStatistic(context),


              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStatistic(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildDoctorReviews(
            context,
            dynamicText1: "2",
            dynamicText2: "Shots on goal",
            dynamicText3: "6",
          ),
          SizedBox(height: 13.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 6.v,
                width: 168.h,
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 198.h,
                        child: Divider(),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgArrowDownBlueGray800,
                      height: 6.v,
                      width: 62.h,
                      alignment: Alignment.centerRight,
                    ),
                  ],
                ),
              ),
              Container(
                height: 6.v,
                width: 198.h,
                decoration: BoxDecoration(
                  color: appTheme.indigo50,
                ),
                child: ClipRRect(
                  child: LinearProgressIndicator(
                    value: 0.7,
                    backgroundColor: appTheme.indigo50,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      appTheme.blue80001,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          _buildRecentOrders(
            context,
            dynamicText1: "4",
            dynamicText2: "Shots",
            dynamicText3: "15",
          ),
          SizedBox(height: 14.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 168.h,
                      child: Divider(),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowDownBlueGray800,
                    height: 6.v,
                    width: 82.h,
                    alignment: Alignment.centerRight,
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Container(
                    height: 6.v,
                    width: 158.h,
                    decoration: BoxDecoration(
                      color: appTheme.indigo50,
                    ),
                    child: ClipRRect(
                      child: LinearProgressIndicator(
                        value: 0.75,
                        backgroundColor: appTheme.indigo50,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          appTheme.blue80001,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          _buildClientTestimonials(
            context,
            dynamicText1: "26.0%",
            dynamicText2: "Possession %",
            dynamicText3: "74.0%",
          ),
          SizedBox(height: 14.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 6.v,
                width: 188.h,
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 158.h,
                        child: Divider(),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgArrowDownBlueGray800,
                      height: 6.v,
                      width: 34.h,
                      alignment: Alignment.centerRight,
                    ),
                  ],
                ),
              ),
              Container(
                height: 6.v,
                width: 188.h,
                decoration: BoxDecoration(
                  color: appTheme.indigo50,
                ),
                child: ClipRRect(
                  child: LinearProgressIndicator(
                    value: 0.75,
                    backgroundColor: appTheme.indigo50,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      appTheme.blue80001,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          _buildClientTestimonials(
            context,
            dynamicText1: "3",
            dynamicText2: "Yellow card  ",
            dynamicText3: "2",
          ),
          SizedBox(height: 14.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 6.v,
                width: 188.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        width: 188.h,
                        child: Divider(),
                      ),
                    ),
                    Positioned(left: 100,
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 6.v,
                          width: 188.h,
                          decoration: BoxDecoration(
                            color: appTheme.indigo50,
                          ),
                          child: ClipRRect(
                            child: LinearProgressIndicator(
                              value: 0.45,
                              backgroundColor: appTheme.indigo50,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                appTheme.blue80001,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 6.v,
                width: 188.h,
                decoration: BoxDecoration(
                  color: appTheme.indigo50,
                ),
                child: ClipRRect(
                  child: LinearProgressIndicator(
                    value: 0.35,
                    backgroundColor: appTheme.indigo50,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      appTheme.blueGray800,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          _buildClientTestimonials(
            context,
            dynamicText1: "0",
            dynamicText2: "Corner kicks",
            dynamicText3: "2",
          ),
          SizedBox(height: 14.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 6.v,
                width: 188.h,
                decoration: BoxDecoration(
                  color: appTheme.indigo50,
                ),
                child: ClipRRect(
                  child: LinearProgressIndicator(
                    value: 0.9,
                    backgroundColor: appTheme.indigo50,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      appTheme.indigo50,
                    ),
                  ),
                ),
              ),
              _buildUserProfile(context),
            ],
          ),
          SizedBox(height: 12.v),
          _buildDoctorReviews(
            context,
            dynamicText1: "10",
            dynamicText2: "Crosses",
            dynamicText3: "23",
          ),
          SizedBox(height: 14.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 168.h,
                      child: Divider(),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowDownBlueGray800,
                    height: 6.v,
                    width: 82.h,
                    alignment: Alignment.centerRight,
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Container(
                    height: 6.v,
                    width: 158.h,
                    decoration: BoxDecoration(
                      color: appTheme.indigo50,
                    ),
                    child: ClipRRect(
                      child: LinearProgressIndicator(
                        value: 0.75,
                        backgroundColor: appTheme.indigo50,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          appTheme.blue80001,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          _buildClientTestimonials(
            context,
            dynamicText1: "3",
            dynamicText2: "Goalkeeper saves",
            dynamicText3: "2",
          ),
          SizedBox(height: 13.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 6.v,
                width: 188.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        width: 188.h,
                        child: Divider(),
                      ),
                    ),
                    Positioned(left: 100,
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 6.v,
                          width: 188.h,
                          decoration: BoxDecoration(
                            color: appTheme.indigo50,
                          ),
                          child: ClipRRect(
                            child: LinearProgressIndicator(
                              value: 0.45,
                              backgroundColor: appTheme.indigo50,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                appTheme.blue80001,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Container(
                    height: 6.v,
                    width: 158.h,
                    decoration: BoxDecoration(
                      color: appTheme.indigo50,
                    ),
                    child: ClipRRect(
                      child: LinearProgressIndicator(
                        value: 0.32,
                        backgroundColor: appTheme.indigo50,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          appTheme.blueGray800,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          _buildRecentOrders(
            context,
            dynamicText1: "10",
            dynamicText2: "Goalk kicks",
            dynamicText3: "2",
          ),
          SizedBox(height: 14.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 6.v,
                width: 188.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        width: 188.h,
                        child: Divider(),
                      ),
                    ),
                    Positioned(left: 100,
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 6.v,
                          width: 188.h,
                          decoration: BoxDecoration(
                            color: appTheme.indigo50,
                          ),
                          child: ClipRRect(
                            child: LinearProgressIndicator(
                              value: 0.45,
                              backgroundColor: appTheme.indigo50,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                appTheme.blue80001,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 6.v,
                width: 158.h,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 158.h,
                        child: Divider(),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgArrowDownBlueGray800,
                      height: 6.v,
                      width: 36.h,
                      alignment: Alignment.centerLeft,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          _buildRecentOrders(
            context,
            dynamicText1: "10",
            dynamicText2: "Treatments",
            dynamicText3: "2",
          ),
          SizedBox(height: 14.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildUserProfile(context),
              Container(
                height: 6.v,
                width: 158.h,
                decoration: BoxDecoration(
                  color: appTheme.indigo50,
                ),
                child: ClipRRect(
                  child: LinearProgressIndicator(
                    value: 0.32,
                    backgroundColor: appTheme.indigo50,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      appTheme.blue80001,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildClientTestimonials(
    BuildContext context, {
    required String dynamicText1,
    required String dynamicText2,
    required String dynamicText3,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          dynamicText1,
          style: CustomTextStyles.titleSmallBlue80001_1.copyWith(
            color: appTheme.blue80001,
          ),
        ),
        Text(
          dynamicText2,
          style: CustomTextStyles.titleSmallBluegray300.copyWith(
            color: appTheme.blueGray300,
          ),
        ),
        Text(
          dynamicText3,
          style: theme.textTheme.titleSmall!.copyWith(
            color: appTheme.gray900,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildDoctorReviews(
    BuildContext context, {
    required String dynamicText1,
    required String dynamicText2,
    required String dynamicText3,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Text(
            dynamicText1,
            style: theme.textTheme.titleSmall!.copyWith(
              color: appTheme.gray900,
            ),
          ),
        ),
        Text(
          dynamicText2,
          style: CustomTextStyles.titleSmallBluegray300.copyWith(
            color: appTheme.blueGray300,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Text(
            dynamicText3,
            style: CustomTextStyles.titleSmallBlue80001_1.copyWith(
              color: appTheme.blue80001,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildRecentOrders(
    BuildContext context, {
    required String dynamicText1,
    required String dynamicText2,
    required String dynamicText3,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          dynamicText1,
          style:  theme.textTheme.titleSmall!.copyWith(
            color: appTheme.gray900,
          ),
        ),
        Spacer(
          flex: 48,
        ),
        Text(
          dynamicText2,
          style: CustomTextStyles.titleSmallBluegray300.copyWith(
            color: appTheme.blueGray300,
          ),
        ),
        Spacer(
          flex: 51,
        ),
        Text(
          dynamicText3,
          style: theme.textTheme.titleSmall!.copyWith(
            color: appTheme.gray900,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildUserProfile(BuildContext context) {
    return SizedBox(
      height: 6.v,
      width: 188.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 188.h,
              child: Divider(),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 188.h,
              child: Divider(
                color: appTheme.blue80001,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
