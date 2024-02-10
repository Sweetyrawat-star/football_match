import 'package:flutter/material.dart';
import 'package:football_match_live/core/app_export.dart';
import 'package:football_match_live/presentation/detail_stats_tab_container_screen/detail_stats_tab_container_screen.dart';

class SearchTypeKeywordMatchesPage extends StatefulWidget {
  const SearchTypeKeywordMatchesPage({Key? key})
      : super(
          key: key,
        );

  @override
  SearchTypeKeywordMatchesPageState createState() =>
      SearchTypeKeywordMatchesPageState();
}

class SearchTypeKeywordMatchesPageState
    extends State<SearchTypeKeywordMatchesPage>
    with AutomaticKeepAliveClientMixin<SearchTypeKeywordMatchesPage> {
  final List<Map<String, dynamic>> textData = [
    {
      'text': 'FT',
      'date': 'Today,26 December',
      'team1': 'Arsenal',
      'team2': 'LiverPool',
      'team1Point': '2 ',
      'team2Point': '1',
      'team1Image': ImageConstant.team1,
      'team2Image': ImageConstant.team2,
      'playingTeam1': 'true',
      'playingTeam2': 'false',
    },
    {
      'text': 'FT',
      'date': 'Sunday,30 December',
      'team1': 'Liverpool ',
      'team2': 'Manchestar Uni...',
      'team1Point': '1',
      'team2Point': '2',
      'team1Image': ImageConstant.team2,
      'team2Image': ImageConstant.team3,
      'playingTeam1': 'false',
      'playingTeam2': 'true',
    },
    {
      'text': 'FT',
      'date': 'Friday,26 November',
      'team1': 'Manchestar Uni... ',
      'team2': 'Spain',
      'LiverPool': 'true',
      'team1Point': '0',
      'team2Point': '2',
      'team1Image': ImageConstant.imgThumbsUp,
      'team2Image': ImageConstant.team1,
      'playingTeam1': 'true',
      'playingTeam2': 'false',
    },
    {
      'text': 'FT',
      'date': 'Tuesday,22 November',
      'team1': 'Arsenal ',
      'team2': 'Spain',
      'team1Point': '1 ',
      'team2Point': '0',
      'team1Image': ImageConstant.team1,
      'team2Image': ImageConstant.team3,
      'playingTeam1': 'true',
      'playingTeam2': 'false',
    },
    {
      'text': 'Ft',
      'date': 'Sunday,20,November',
      'team1': 'Spain',
      'team2': 'England',
      'team1Point': '2',
      'team2Point': '2',
      'team1Image': ImageConstant.imgThumbsUp,
      'team2Image': ImageConstant.team2,
      'playingTeam1': 'false',
      'playingTeam2': 'true',
    },
  ];
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 20),
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA70001,
          child: _buildSixtyFour(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtyFour(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: textData.length,
        //physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailStatsTabContainerScreen()));
            },
            child: Padding(
              padding: EdgeInsets.only(left: 21.h, right: 27.h, top: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    textData[index]['date'],
                    style: CustomTextStyles.titleMediumGray90004_1,
                  ),
                  SizedBox(height: 23.v),
                  Container(
                    padding: EdgeInsets.all(15.h),
                    decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder19,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 31.v,
                                  bottom: 30.v,
                                ),
                                child: Text(
                                  textData[index]['text'],
                                  style: CustomTextStyles
                                      .titleMediumUrbanistGray90004,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 29.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildRow(
                                      context,
                                      teamName: textData[index]['team1'],
                                      playerImage: textData[index]['team1Image'],
                                      playingTeam: textData[index]
                                                  ['playingTeam1'] ==
                                              'true'
                                          ? true
                                          : false,
                                    ),
                                    SizedBox(height: 12.v),
                                    _buildRow(
                                      context,
                                      teamName: textData[index]['team2'],
                                      playerImage: textData[index]['team2Image'],
                                      playingTeam: textData[index]
                                                  ['playingTeam1'] ==
                                              'true'
                                          ? false
                                          : true,
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 11.v),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        textData[index]['team1Point'],
                                        style:
                                            CustomTextStyles.titleMediumGray90004,
                                      ),
                                    ),
                                    SizedBox(height: 15.v),
                                    Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: Text(
                                        textData[index]['team2Point'],
                                        style:
                                            CustomTextStyles.titleMediumGray90004,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgSignal,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(
                            left: 12.h,
                            top: 30.v,
                            bottom: 30.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  /// Common widget
  Widget _buildRow(BuildContext context,
      {required String teamName,
      required String playerImage,
      required bool playingTeam}) {
    return Row(
      children: [
        CustomImageView(
          imagePath: playerImage,
          height: 36.adaptSize,
          width: 36.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 5.v,
            bottom: 6.v,
          ),
          child: Text(
            teamName,
            style: theme.textTheme.titleLarge!.copyWith(
              color: appTheme.gray90004,
            ),
          ),
        ),
        playingTeam
            ? CustomImageView(
                imagePath: ImageConstant.imgIconlyBoldStar,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.only(
                  left: 6.h,
                  top: 10.v,
                  bottom: 10.v,
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
