import 'package:flutter/material.dart';
import 'package:griya_fashion/utils/color_file.dart';
import 'package:griya_fashion/widgets/home/profile_widget.dart';
import 'package:griya_fashion/widgets/home/rekomendasi_widget.dart';

class HomePage extends StatelessWidget {

  Widget bottomNav(){
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(color: colorWhite, boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          )
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {},
              child: Image.asset(
                'assets/rekomendasi.png',
                width: 25,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Image.asset(
                'assets/message.png',
                width: 25,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Image.asset(
                'assets/notif.png',
                width: 25,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Image.asset(
                'assets/profile.png',
                width: 25,
              ),
            )
          ],
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              RekomendasiWidget()
              // ProfileWidget()
            ],
          ),
        ),
        backgroundColor: backgroundColorMain,
        bottomNavigationBar: bottomNav()
      ),
    );
  }
}
