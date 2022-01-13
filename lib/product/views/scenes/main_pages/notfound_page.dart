import 'package:flutter/widgets.dart';
import 'package:login_template/product/views/widgets/custom_widgets/custom_text.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(
        "Böyle bir sayfa yok", //todo: burayı dinamic yap
      ),
    );
  }
}
