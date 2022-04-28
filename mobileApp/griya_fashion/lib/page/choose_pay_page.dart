import 'package:flutter/material.dart';
import 'package:griya_fashion/utils/color_file.dart';
import 'package:griya_fashion/utils/font_data.dart';
import 'package:griya_fashion/widgets/payment_widget.dart';

class ChoosePayPage extends StatelessWidget {
  String price;
  ChoosePayPage({required this.price});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColorMain,
      appBar: AppBar(
        title: Text(
          'Payment Method',
          style: fontBig.copyWith(fontSize: 18),
        ),
        backgroundColor: colorWhite,
        leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back,
              color: colorBlack,
            )),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20,),
          PaymentMethod(img: 'cod', des: 'Pembayaran Ditempat', price: price,),
          PaymentMethod(img: 'bca', des: 'BCA Mobile Bangking', price: price,),
          PaymentMethod(img: 'klik_bca', des: 'Klik BCA Mobile', price: price,),
          PaymentMethod(img: 'bni', des: 'Bni Mobile Banking', price: price,),
          PaymentMethod(img: 'ovo', des: 'Dompet Digital Ovo',price: price,)
        ],
      ),
    );
  }
}
