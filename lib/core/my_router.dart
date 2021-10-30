import 'package:flutter/material.dart';
import 'package:yimeiinfo_flutter/pages/home/home.dart';
import 'package:yimeiinfo_flutter/pages/mainscreen.dart';
import 'package:yimeiinfo_flutter/pages/mine/mine.dart';

class YMRouter {
  static final Map<String, WidgetBuilder> routes = {
    HomePage.ROUTE_NAME: (context) => const HomePage(),
    MinePage.ROUTE_NAME: (context) => const MinePage(),
    MainScreen.ROUTE_NAME: (context) => const MainScreen(),
  };

  static const String initialRoute = MainScreen.ROUTE_NAME;

  static RouteFactory? onUnknownRoute = (setting) {
    return null;
  };

  static RouteFactory? onGenerateRoute = (setting) {
    return null;
  };
}
