import 'package:flutter/material.dart';

class LinkWidget extends StatelessWidget {
  String text;
  void Function() action;
  LinkWidget({required this.text, required this.action});
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: action, child: Text(text));
  }
}
