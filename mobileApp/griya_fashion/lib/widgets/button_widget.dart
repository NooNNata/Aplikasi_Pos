import 'package:flutter/material.dart';
import 'package:griya_fashion/utils/font_data.dart';

class ButtonWidget extends StatelessWidget {
  String title;
  Color colorButton;
  Color colorText;
  void Function() action;
  ButtonWidget(
      {required this.title,
      required this.colorButton,
      required this.action,
      required this.colorText});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: action,
        style: ButtonStyle(
          fixedSize: MaterialStateProperty.all<Size>(const Size(277, 45)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          )),
          textStyle: MaterialStateProperty.all<TextStyle>(fontFamilly.copyWith(
              fontSize: 16, fontWeight: FontWeight.w600, color: colorText)),
          backgroundColor: MaterialStateProperty.all<Color>(colorButton),
        ),
        child: Text(title));
  }
}
