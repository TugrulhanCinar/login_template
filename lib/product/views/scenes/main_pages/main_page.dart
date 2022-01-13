import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_template/core/consts/app/page_state.dart';
import 'package:login_template/product/view_models/user_viewmodel.dart';
import 'package:login_template/product/views/scenes/home_page/home_page.dart';
import 'package:login_template/product/views/scenes/login/login_page.dart';

class MainPage extends StatelessWidget {
  final userCont = Get.put(UserViewModel());

  @override
  Widget build(BuildContext context) {
    if (userCont.state == PageState.BUSY) {
      return CircularProgressIndicator(); // TODO: burayı da customize et
    } else {
      if (userCont.user == null)
        return LoginPageScene();
      else
        return HomePageScene();
    }
  }
}
