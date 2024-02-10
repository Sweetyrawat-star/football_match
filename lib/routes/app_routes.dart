import 'package:flutter/material.dart';
import 'package:football_match_live/presentation/home_screen/home_screen.dart';
import 'package:football_match_live/presentation/search_screen/search_screen.dart';
import 'package:football_match_live/presentation/search_type_keyword_matches_tab_container_screen/search_type_keyword_matches_tab_container_screen.dart';
import 'package:football_match_live/presentation/detail_stats_tab_container_screen/detail_stats_tab_container_screen.dart';
import 'package:football_match_live/presentation/app_navigation_screen/app_navigation_screen.dart';

import '../utils/navigator_service.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';

  static const String searchScreen = '/search_screen';

  static const String searchTypeKeywordMatchesPage =
      '/search_type_keyword_matches_page';

  static const String searchTypeKeywordMatchesTabContainerScreen =
      '/search_type_keyword_matches_tab_container_screen';

  static const String detailStatsPage = '/detail_stats_page';

  static const String detailStatsTabContainerScreen =
      '/detail_stats_tab_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }

  static Map<String, WidgetBuilder> routes = {
    homeScreen: (context) => HomeScreen(),
    searchScreen: (context) => SearchScreen(),
    searchTypeKeywordMatchesTabContainerScreen: (context) =>
        SearchTypeKeywordMatchesTabContainerScreen(),
    detailStatsTabContainerScreen: (context) => DetailStatsTabContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
