import 'package:flutter/material.dart';
import 'package:griya_fashion/model/shirt.dart';
import 'package:griya_fashion/utils/color_file.dart';
import 'package:griya_fashion/utils/font_data.dart';

class ProductCheckoutWidget extends StatelessWidget {
  ShirtModel? shirtModel;
  ProductCheckoutWidget({this.shirtModel = null});
  @override
  Widget build(BuildContext context) {
    return shirtModel == null ? Container() :Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      decoration: BoxDecoration(
          color: colorWhite, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Product',
            style: fontBig.copyWith(fontSize: 17),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Image.network(
                shirtModel!.image,
                width: 100,
                height: 100,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    shirtModel!.title,
                    style: fontBig.copyWith(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Kuantitas : 1',
                    style: fontRegular.copyWith(
                        fontSize: 14, color: colorBlack.withOpacity(0.8)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    shirtModel!.price,
                    style: fontBig.copyWith(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
