import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

extension MediaQueryExtension on BuildContext {
  double get height => mediaQuery.size.height;

  double get width => mediaQuery.size.width;

  double get veryLowValue => height * 0.005;

  double get lowValue => height * 0.01;

  double get lowMediumValue => height * 0.015;

  double get normalValue => height * 0.02;

  double get mediumValue => height * 0.04;

  double get highmediumValue => height * 0.07;

  double get highValue => height * 0.1;
}

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  /// Theme.of(context).textTheme yerine kısaca context.textTheme yazmak için:
  TextTheme get textTheme => theme.textTheme;

  /// Theme.of(context).colorScheme yerine kısaca context.colorScheme yazmak için:
  ColorScheme get colorScheme => theme.colorScheme;
}

extension PaddingExtensionAll on BuildContext {
  EdgeInsets get paddingLow => EdgeInsets.all(lowValue);

  EdgeInsets get paddingLowMedium => EdgeInsets.all(lowMediumValue);

  EdgeInsets get paddingNormal => EdgeInsets.all(normalValue);

  EdgeInsets get paddingMedium => EdgeInsets.all(mediumValue);

  EdgeInsets get paddingMediumHigh => EdgeInsets.all(highmediumValue);

  EdgeInsets get paddingHigh => EdgeInsets.all(highValue);
}

extension PaddingExtensionSymetric on BuildContext {
  EdgeInsets get paddingLowVertical => EdgeInsets.symmetric(vertical: lowValue);

  EdgeInsets get paddingHighOnlyTop => EdgeInsets.only(top: highValue);

  EdgeInsets get paddingNormalVertical => EdgeInsets.symmetric(vertical: normalValue);

  EdgeInsets get paddingMediumVertical => EdgeInsets.symmetric(vertical: mediumValue);

  EdgeInsets get paddingHighVertical => EdgeInsets.symmetric(vertical: highValue);

  EdgeInsets get paddingLowHorizontal => EdgeInsets.symmetric(horizontal: lowValue);

  EdgeInsets get paddingNormalHorizontal => EdgeInsets.symmetric(horizontal: normalValue);

  EdgeInsets get paddingMediumHorizontal => EdgeInsets.symmetric(horizontal: mediumValue);

  EdgeInsets get paddingHighHorizontal => EdgeInsets.symmetric(horizontal: highValue);
}

extension InputDecorationExtension on BuildContext {
  InputDecoration customInputDecoration(String hintText) => InputDecoration(hintText: hintText);

  BorderRadius get containerBorderRadiusVeryLow => BorderRadius.circular(5);

  BorderRadius get containerBorderRadiusLow => BorderRadius.circular(10);

  BorderRadius get containerBorderRadiusMediumLow => BorderRadius.circular(15);

  BorderRadius get containerBorderRadiusNormal => BorderRadius.circular(20);

  BorderRadius get containerBorderRadiusHigh => BorderRadius.circular(30);

  BorderRadius get containerOnlyBorderRadiusNormal => BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      );

  RoundedRectangleBorder get veryLowCircularBorder => RoundedRectangleBorder(borderRadius: containerBorderRadiusVeryLow);

  RoundedRectangleBorder get lowCircularBorder => RoundedRectangleBorder(borderRadius: containerBorderRadiusLow);

  RoundedRectangleBorder get normalCircularBorder => RoundedRectangleBorder(borderRadius: containerBorderRadiusNormal);

  RoundedRectangleBorder get highCircularBorder => RoundedRectangleBorder(borderRadius: containerBorderRadiusHigh);

  RoundedRectangleBorder highCircularBorderandSide(context) => RoundedRectangleBorder(
        borderRadius: containerBorderRadiusHigh,
        side: BorderSide(color: Theme.of(context).primaryColor),
      );

  List<BoxShadow> get customBoxShadow => [
        BoxShadow(
          color: Color(0xFF2a3747).withOpacity(0.15),
          blurRadius: 8,
          spreadRadius: 0,
          offset: Offset(0, 4), // changes position of shadow
        ),
      ];
}

extension DurationExtension on BuildContext {
  Duration get lowDuration => Duration(milliseconds: 500);

  Duration get normalDuration => Duration(seconds: 1);
}

extension EmptyWidget on BuildContext {
  Widget get emptyVerylowWidget => SizedBox(height: veryLowValue);

  Widget get emptylowWidget => SizedBox(height: lowValue);

  Widget get emptyNormalWidget => SizedBox(height: normalValue);

  Widget get emptyMediumWidget => SizedBox(height: mediumValue);
}
