import 'package:flutter/material.dart';
import 'package:football_match_live/core/app_export.dart';
import 'package:football_match_live/widgets/custom_elevated_button.dart';

import '../../../widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class ViewhierarchylistItemWidget extends StatefulWidget {
  const ViewhierarchylistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  State<ViewhierarchylistItemWidget> createState() => _ViewhierarchylistItemWidgetState();
}

class _ViewhierarchylistItemWidgetState extends State<ViewhierarchylistItemWidget> {
  final List<Map<String, dynamic>> teamMatch = [
    {
      'text': 'Man City',
      'date': '07:45',
      'team1': 'Brighton',
      'team1Image': ImageConstant.team1,
      'team2Image': ImageConstant.team2,

    },
    {
      'text': 'WOLVES',
      'date': '01:02',
      'team1': 'Leichester',
      'team1Image': ImageConstant.team2,
      'team2Image': ImageConstant.team3,

    },
    {
      'text': 'FT',
      'date': '09:07',
      'team1': 'Manchestar Uni... ',
      'team1Image': ImageConstant.imgThumbsUp,
      'team2Image': ImageConstant.team1,

    },

  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
        itemCount:teamMatch.length,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.only(top:15.0),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 26.h,
            vertical: 16.v,
          ),
          decoration: AppDecoration.fillGray50.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 9.v,
                  bottom: 4.v,
                ),
                child: Text(
                  teamMatch[index]['text'],
                  style: CustomTextStyles.titleSmallGray90001,
                ),
              ),
              CustomImageView(
                imagePath: teamMatch[index]['team1Image'],
                height: 32.adaptSize,
                width: 32.adaptSize,
              ),
              CustomOutlinedButton(
                width: 52.h,
                text: teamMatch[index]['date'],
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: teamMatch[index]['team2Image'],
                height: 32.adaptSize,
                width: 32.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 9.v,
                  bottom: 4.v,
                ),
                child: Text(
                  teamMatch[index]['team1'],
                  style: CustomTextStyles.titleSmallGray90001,
                ),
              ),
            ],
          ),
        ),
      );
    });



  }
}
