import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  String hintText;
  String text;
  bool isPassword;
TextEditingController controler;
  InputWidget({required this.hintText, required this.text, required this.isPassword, required this.controler});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        TextField(
          controller: controler,
          obscureText: isPassword,
          decoration: InputDecoration(
              hintText: hintText,
              
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
        )
      ],
    );
  }
}
