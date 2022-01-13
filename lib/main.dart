import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_template/core/init/navigation/navigation_services.dart';
import 'package:login_template/product/views/scenes/main_pages/splash.dart';
import 'core/init/navigation/navigation_route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      navigatorKey: NavigationServices.instance.navigatorKey,
      onGenerateRoute: NavigationRoute.instance.generateRoute,
      home: Scaffold(body: SplashPage()),
    );
  }
}
