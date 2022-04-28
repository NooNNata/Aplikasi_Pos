import 'package:flutter/material.dart';
import 'package:griya_fashion/model/shirt.dart';
import 'package:griya_fashion/page/checkout_page.dart';
import 'package:griya_fashion/utils/color_file.dart';
import 'package:griya_fashion/widgets/detail_product_widget.dart';
import 'package:griya_fashion/widgets/image_detail_widget.dart';

class DetailPage extends StatelessWidget {
  ShirtModel shirtModel;
  DetailPage({required this.shirtModel});
  Widget floatingTop(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
            mini: true,
            backgroundColor: colorGreen,
            onPressed: () => Navigator.pop(context),
            child: Icon(Icons.arrow_back),
          ),
          FloatingActionButton(
            mini: true,
            backgroundColor: colorWhite,
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => CheckoutPage(shirtModel: null)))),
            child: Image.asset(
              'assets/cart.png',
              width: 23,
              color: colorGreen,
            ),
          ),
        ],
      ),
    );
  }

  Widget stackWidget(BuildContext context) {
    return Stack(
      children: [
        Column(children: [
          ImageDetailWidget(img: shirtModel.image),
          DetailProductWidget(
            shirtModel: shirtModel,
          )
        ]),
        floatingTop(context)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColorMain,
      body: SafeArea(child: SingleChildScrollView(child: stackWidget(context))),
    );
  }
}
