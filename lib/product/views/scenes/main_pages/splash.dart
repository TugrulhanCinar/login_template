import 'package:flutter/material.dart';
import 'package:login_template/core/consts/navigation/navigation_constants.dart';
import 'package:login_template/core/extensions/context_extension.dart';
import 'package:login_template/core/init/navigation/navigation_services.dart';
import 'package:login_template/product/views/widgets/custom_widgets/custom_text.dart';

class SplashPage extends StatelessWidget {
  bool isFirst = true;

  @override
  Widget build(BuildContext context) {
    if (isFirst) startTimer();
    print("object");
    return Container(
      width: context.width,
      height: context.height,
      color: Colors.red,
      child: Center(
        child: CustomText(
          "SPLASH PAGE",
        ),
      ),
    );
  }

  startTimer() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      NavigationServices.instance
          .navigateToPageClear(path: NavigationConstans.MAIN_PAGE);
      isFirst = false;
    });
  }
}
