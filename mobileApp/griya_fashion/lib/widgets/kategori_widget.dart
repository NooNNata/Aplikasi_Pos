import 'package:flutter/material.dart';
import 'package:griya_fashion/utils/color_file.dart';
import 'package:griya_fashion/utils/font_data.dart';

class Categori extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: colorGreen,
              child: Image.asset(
                'assets/baju.png',
                width: 25,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Baju',
              style: fontRegular.copyWith(color: colorBlack),
            )
          ],
        ),
        Column(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: colorWhite,
              child: Image.asset(
                'assets/celana.png',
                width: 25,
                color: colorGrey,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Celana',
              style: fontRegular.copyWith(color: colorGrey),
            )
          ],
        ),
        Column(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: colorWhite,
              child: Image.asset(
                'assets/tas.png',
                width: 25,
                color: colorGrey,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Tas',
              style: fontRegular.copyWith(color: colorGrey),
            )
          ],
        ),
        Column(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: colorWhite,
              child: Image.asset(
                'assets/sepatu.png',
                width: 25,
                color: colorGrey,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Sepatu',
              style: fontRegular.copyWith(color: colorGrey),
            )
          ],
        ),
      ],
    );
  }
}
