import 'package:flutter/material.dart';
import 'package:griya_fashion/model/shirt.dart';
import 'package:griya_fashion/page/choose_pay_page.dart';
import 'package:griya_fashion/page/final_payment_page.dart';
import 'package:griya_fashion/utils/color_file.dart';
import 'package:griya_fashion/utils/font_data.dart';
import 'package:griya_fashion/widgets/option_widget.dart';
import 'package:griya_fashion/widgets/product_checkout_widget.dart';

class CheckoutPage extends StatelessWidget {
  ShirtModel? shirtModel;
  CheckoutPage({required this.shirtModel});
  Widget textTotal() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subtotal',
                style: fontBig.copyWith(fontSize: 15),
              ),
              Text(shirtModel!.price,
                  style: fontRegular.copyWith(fontSize: 15)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Biaya Kirim',
                style: fontBig.copyWith(fontSize: 15),
              ),
              Text('Gratis', style: fontRegular.copyWith(fontSize: 15)),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: fontBig.copyWith(fontSize: 15),
              ),
              Text(shirtModel!.price, style: fontBig.copyWith(fontSize: 15)),
            ],
          )
        ],
      ),
    );
  }

  Widget buttonBayar(BuildContext context) {
    return shirtModel == null ?Container():ElevatedButton(
        style: ButtonStyle(
            fixedSize: MaterialStateProperty.all<Size>(
                Size(MediaQuery.of(context).size.width - 40, 30)),
            backgroundColor: MaterialStateProperty.all<Color>(colorGreen)),
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    ChoosePayPage(price: shirtModel!.price))),
        child: const Text('Bayar'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColorMain,
      appBar: AppBar(
        title: Text(
          'Checkout',
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
          OptionWidget(profile: false),
          ProductCheckoutWidget(
            shirtModel: shirtModel,
          ),
          shirtModel == null ? Container() : textTotal(),
          buttonBayar(context)
        ],
      ),
    );
  }
}
