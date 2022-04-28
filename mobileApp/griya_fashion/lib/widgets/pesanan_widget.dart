import 'package:flutter/material.dart';
import 'package:griya_fashion/utils/color_file.dart';
import 'package:griya_fashion/utils/font_data.dart';

class PesananWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 21, right: 21, top: 45),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 19, vertical: 25),
      decoration: BoxDecoration(
          color: colorWhite, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pesanan Saya',
            style: fontBig.copyWith(fontSize: 18),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/pembayaran.png',
                    width: 25,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Pilih',
                    style: fontRegular.copyWith(fontSize: 11),
                  ),
                  Text(
                    'Pembayaran',
                    style: fontRegular.copyWith(fontSize: 11),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/process.png',
                    width: 25,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Precess',
                    style: fontRegular.copyWith(fontSize: 11),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/kirim.png',
                    width: 25,
                    color: colorGreen,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Dalam',
                  
                    style: fontRegular.copyWith(fontSize: 11, color: colorGreen),
                  ),
                  Text(
                    'Pengiriman',
                    style: fontRegular.copyWith(fontSize: 11, color: colorGreen),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/ulas.png',
                    width: 25,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Ulas',
                    style: fontRegular.copyWith(fontSize: 11),
                  ),
                  Text(
                    'Product',
                    style: fontRegular.copyWith(fontSize: 11),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
