import 'package:flutter/material.dart';
import 'package:login_template/core/consts/navigation/navigation_constants.dart';
import 'package:login_template/product/views/scenes/login/login_page.dart';
import 'package:login_template/product/views/scenes/main_pages/main_page.dart';
import 'package:login_template/product/views/scenes/main_pages/notfound_page.dart';

class NavigationRoute {
  static NavigationRoute _instance = NavigationRoute._init();

  static NavigationRoute get instance => _instance;

  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args, {Object? data}) {
    switch (args.name) {
      case NavigationConstans.MAIN_PAGE:
        return normalNavigate(MainPage());
      default:
        return normalNavigate(NotFoundPage());
    }
  }

  MaterialPageRoute normalNavigate(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}

MaterialPageRoute normalNavigate(Widget widget) {
  return MaterialPageRoute(builder: (context) => widget);
}
