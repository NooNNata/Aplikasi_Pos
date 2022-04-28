import 'package:flutter/material.dart';
import 'package:griya_fashion/utils/color_file.dart';
import 'package:griya_fashion/widgets/button_widget.dart';

class GetStatertedPage extends StatelessWidget {
  const GetStatertedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/LOGO.png'),
            ButtonWidget(
                title: 'DAFTAR SEKARANG',
                action: () => Navigator.pushNamed(context, '/register'),
                colorButton: colorGreen,
                colorText: colorWhite)
          ],
        ),
      )),
    );
  }
}
