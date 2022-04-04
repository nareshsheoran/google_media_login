import 'package:flutter/material.dart';
import 'package:google_media_login/page/dashboard_page.dart';
import 'package:google_media_login/page/home_page.dart';

class AppRoutes {
  static const String HomePage = "HomePage";
  static const String DashBoardPage = "DashBoardPage";
}
Map<String, WidgetBuilder> routes = {
  AppRoutes.HomePage: (context)=> const HomePage(),
  AppRoutes.DashBoardPage: (context)=> const DashBoardPage(),

};