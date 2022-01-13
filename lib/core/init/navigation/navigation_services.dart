import 'package:flutter/cupertino.dart';
import 'my_navigation_services.dart';

class NavigationServices implements MyNavigationServices {
  static NavigationServices _instance = NavigationServices._init();

  static NavigationServices get instance => _instance;

  NavigationServices._init();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  final removeAllOldRoutes = (Route<dynamic> route) => false;

  @override
  Future<void> navigateToPage({required String path, Object? data}) async {
    await navigatorKey.currentState!.pushNamed(path, arguments: data);
  }

  @override
  Future<void> navigateToPageClear({required String path, Object? data}) async {
    await navigatorKey.currentState!.pushNamedAndRemoveUntil(path, removeAllOldRoutes, arguments: data);
  }
}
