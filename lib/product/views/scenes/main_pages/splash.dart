import 'package:flutter/material.dart';
import 'package:login_template/core/consts/navigation/navigation_constants.dart';
import 'package:login_template/core/extensions/context_extension.dart';
import 'package:login_template/core/init/navigation/navigation_services.dart';
import 'package:login_template/product/views/widgets/custom_widgets/custom_text.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    startTimer();
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
      NavigationServices.instance.navigateToPageClear(path: NavigationConstans.MAIN_PAGE);
      print("tgrl bitti");
    });
  }
}
