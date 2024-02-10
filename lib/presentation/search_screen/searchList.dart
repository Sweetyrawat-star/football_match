import 'package:flutter/material.dart';
import 'package:football_match_live/core/app_export.dart';

import '../detail_stats_tab_container_screen/detail_stats_tab_container_screen.dart';

class SearchList extends StatefulWidget {
  SearchList({Key? key})
      : super(
    key: key,
  );

  @override
  State<SearchList> createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {

  List imageList = [
    ImageConstant.imgImage,
    ImageConstant.imgImage28x48,
   ImageConstant.imgImage40x40,
    ImageConstant.imgImage1,
    ImageConstant.imgImage44x44,
    ImageConstant.imgImage2,
    ImageConstant.imgImage3,
    ImageConstant.imgImage4,
    ImageConstant.imgImage5,
    ImageConstant.imgImage6,
  ];
  final List<Map<String, dynamic>> textData = [
    {'text': 'World Cup 2023 ', 'starValue': 'true',},
    {'text': 'England ', 'starValue': 'true',},
    {'text': 'Champions League', 'starValue': 'false'},
    {'text': 'Europe League ', 'starValue': 'true'},
    {'text': 'Euro 2024 Qualification ', 'starValue': 'false'},
    {'text': 'UEFA Nation League ', 'starValue': "false",},
    {'text': 'France', 'starValue': ' true'},
    {'text': 'Germany', 'starValue': ' true'},
    {'text': 'Netherlands ', 'starValue': 'true'},
    {'text': 'Spain', 'starValue': 'true'},
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context,index){
      return GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailStatsTabContainerScreen()));
        },
        child: Padding(
          padding: EdgeInsets.only(left: 6.h,top: 20,),
          child: Row(
            children: [
              CustomImageView(
                imagePath: imageList[index],
                height: 48.v,
                width: 48.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 22.h,
                  top: 4.v,
                ),
                child: Text(
                  textData[index]['text'],
                  style: theme.textTheme.titleMedium,
                ),
              ),
              textData[index]['starValue']=="true" ? CustomImageView(
                imagePath: ImageConstant.imgIconlyBoldStar,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.only(
                  left: 8.h,
                  top: 6.v,
                  bottom: 6.v,
                ),
              ):SizedBox(),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgArrowRight,
                height: 28.adaptSize,
                width: 28.adaptSize,
              ),
            ],
          ),
        ),
      );
    },itemCount: textData.length,);
  }
}
