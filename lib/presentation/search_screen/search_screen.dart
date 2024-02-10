import 'package:flutter/material.dart';
import 'package:football_match_live/core/app_export.dart';
import 'package:football_match_live/presentation/search_screen/searchList.dart';
import 'package:football_match_live/widgets/app_bar/appbar_leading_image.dart';

import '../search_type_keyword_matches_tab_container_screen/search_type_keyword_matches_tab_container_screen.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 33.v,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Popular Search",
                  style: CustomTextStyles.titleMediumBluegray800,
                ),
                SizedBox(height: 23.v),
                SearchList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSize _buildAppBar(BuildContext context) {
    return PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, right: 20),
          child: Row(
            children: <Widget>[
              AppbarLeadingImage(
                onTap: (){
                  Navigator.pop(context);
                  FocusScope.of(context).unfocus();
                },
                imagePath: ImageConstant.imgArrowDown,
                margin: EdgeInsets.only(
                  left: 14.h,
                  top: 14.v,
                  bottom: 14.v,
                  right: 10.h,
                ),
              ),
              new Expanded(
                child: TextField(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchTypeKeywordMatchesTabContainerScreen()));
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
            ],
          ),
        ));
  }
}
