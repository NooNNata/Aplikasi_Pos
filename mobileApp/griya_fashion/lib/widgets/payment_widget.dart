import 'package:flutter/material.dart';
import 'package:griya_fashion/page/final_payment_page.dart';
import 'package:griya_fashion/utils/color_file.dart';
import 'package:griya_fashion/utils/font_data.dart';

class PaymentMethod extends StatelessWidget {
  String img;
  String des;
  String price;
  PaymentMethod({required this.img, required this.des,required this.price});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>FinalPaymentPage(price: price,))),
      child: Container(
        margin: EdgeInsets.only(left:20, right: 20, bottom: 10, top: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: colorWhite, borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'assets/${img}.png',
              width: 50,
              fit: BoxFit.fill,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Cash On Delivery',
                  style: fontBig.copyWith(fontSize: 15),
                ),
                Text(
                  des,
                  style: fontBig.copyWith(
                      fontSize: 12, color: colorBlack.withOpacity(0.5)),
                )
              ],
            ),
            const SizedBox(width: 20,),
            Text('->', style: fontBig.copyWith(
              fontSize: 20
            ),)
          ],
        ),
      ),
    );
  }
}
