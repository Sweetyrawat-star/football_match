import 'package:flutter/material.dart';
import 'package:football_match_live/core/app_export.dart';
import 'package:football_match_live/presentation/search_type_keyword_matches_page/search_type_keyword_matches_page.dart';
import 'package:football_match_live/presentation/search_type_keyword_matches_tab_container_screen/search_category.dart';
import 'package:football_match_live/widgets/app_bar/appbar_leading_image.dart';

class SearchTypeKeywordMatchesTabContainerScreen extends StatefulWidget {
  const SearchTypeKeywordMatchesTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SearchTypeKeywordMatchesTabContainerScreenState createState() =>
      SearchTypeKeywordMatchesTabContainerScreenState();
}

class SearchTypeKeywordMatchesTabContainerScreenState
    extends State<SearchTypeKeywordMatchesTabContainerScreen>
    with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: ListView(
          children: [
            SizedBox(height: 22.v),
            SearchCategory(),
            SizedBox(height: 31.v),
            _buildTabview(context),
            SizedBox(
              height: 690.v,
              child: TabBarView(
                controller: tabviewController,
                children: [
                  SearchTypeKeywordMatchesPage(),
                  SearchTypeKeywordMatchesPage(),
                ],
              ),
            ),
          ],
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



  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 40.v,
      width: 382.h,
      padding: EdgeInsets.only(left:15,right: 15),
      child: Container(
        decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey,))),
        child: TabBar(
          controller: tabviewController,
          //padding: EdgeInsets.only(left:15,right: 15),
          labelStyle:  CustomTextStyles
              .titleMediumUrbanistGray90004,
          labelColor: appTheme.blue80001,
          unselectedLabelColor: appTheme.gray500,
          indicatorColor: appTheme.blue80001,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorWeight: 3.0,
          tabs: [
            Tab(
              child: Text(
                "Fixtures",
              ),
            ),
            Tab(
              child: Text(
                "Results",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
