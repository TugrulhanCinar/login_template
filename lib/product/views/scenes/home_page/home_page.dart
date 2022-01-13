import 'package:flutter/material.dart';
import 'package:login_template/product/views/widgets/custom_widgets/custom_text.dart';

class HomePageScene extends StatelessWidget {
  const HomePageScene({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText("ANA SAYFA"),
    );
  }
}
