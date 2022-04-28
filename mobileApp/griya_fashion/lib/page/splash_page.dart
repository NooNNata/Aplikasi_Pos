import 'dart:async';

import 'package:flutter/material.dart';
import 'package:griya_fashion/utils/color_file.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(milliseconds: 700),
        () => Navigator.pushNamedAndRemoveUntil(
            context, '/home', (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColorMain,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/LOGO.png'),
            ],
          ),
        ),
      ),
    );
  }
}
