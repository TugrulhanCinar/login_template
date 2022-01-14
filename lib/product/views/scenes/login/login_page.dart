import 'package:flutter/material.dart';
import 'package:login_template/product/views/widgets/custom_widgets/custom_button.dart';
import 'package:login_template/product/views/widgets/custom_widgets/custom_textformfield.dart';
import 'package:login_template/core/extensions/context_extension.dart';

class LoginPageScene extends StatelessWidget {
  String? email, password;

  LoginPageScene({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Center(
        child: Form(
          child: formBody(context),
        ),
      ),
    );
  }

  Widget formBody(BuildContext context) => Container(
        padding: context.paddingNormal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            getMailTextField,
            context.emptyNormalWidget,
            getPasswordTextField,
            context.emptyNormalWidget,
            button(context),
          ],
        ),
      );

  Widget button(BuildContext context) => Container(
        width: context.width,
        child: CustomButton(txt: "Giriş yap", color: Colors.red, onPressed: login),
      );

  Widget get getMailTextField => CustomTextFormField(
        hintText: "Mail",
        save: mailTextFormFieldSave,
      );

  Widget get getPasswordTextField => CustomTextFormField(
        hintText: "Şifre",
        save: mailTextFormFieldSave,
      );

  mailTextFormFieldSave(String? txt) => email = txt;

  passwordTextFormFieldSave(String txt) => password = txt;

  void login() {
    // TODO: add login buisiness
  }
}
