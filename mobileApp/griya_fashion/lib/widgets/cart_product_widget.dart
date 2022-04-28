import 'package:flutter/material.dart';
import 'package:griya_fashion/model/shirt.dart';
import 'package:griya_fashion/page/detail_page.dart';
import 'package:griya_fashion/utils/color_file.dart';
import 'package:griya_fashion/utils/font_data.dart';

class CartProductWidget extends StatelessWidget {
  String text;
  String image;
  String des;
  String count;
  String price;
  CartProductWidget(
      {required this.text,
      required this.image,
      required this.price,
      required this.des,
      required this.count});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailPage(
                    shirtModel: ShirtModel(
                        image: image,
                        title: text,
                        description: des,
                        price: price),
                  ))),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: colorWhite,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.6),
                spreadRadius: 0.5,
                blurRadius: 5,
                offset: Offset(1, 0),
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage('${image}'), fit: BoxFit.fill),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    maxLines: 2,
                    style: fontRegular.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: colorBlack),
                  ),
                  Text(
                    price,
                    style: fontBig.copyWith(fontSize: 15),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'terjual ' + count,
                    style: fontRegular.copyWith(
                        fontSize: 12, color: colorBlack.withOpacity(0.5)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
