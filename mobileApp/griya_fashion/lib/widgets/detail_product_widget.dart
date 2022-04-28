import 'package:flutter/material.dart';
import 'package:griya_fashion/model/shirt.dart';
import 'package:griya_fashion/page/checkout_page.dart';
import 'package:griya_fashion/utils/color_file.dart';
import 'package:griya_fashion/utils/font_data.dart';
import 'package:griya_fashion/widgets/product_checkout_widget.dart';

class DetailProductWidget extends StatelessWidget {
  ShirtModel shirtModel;
  DetailProductWidget({required this.shirtModel});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: colorWhite, borderRadius: BorderRadius.circular(20)),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            shirtModel.title,
            style: fontBig,
          ),
          const SizedBox(height: 15,),
              Text(
            shirtModel.description,
            style: fontRegular.copyWith(
              fontSize: 12
            ),
          ),
          const SizedBox(height: 15,),
          Text(
            'Rp. 300.000',
            style: fontBig.copyWith(color: colorGreen),
          ),
          const SizedBox(
            height: 35,
          ),
          Container(
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundColor: colorBlack.withOpacity(0.5),
                    maxRadius: 15,
                    child: Text(
                      '-',
                      style: fontBig.copyWith(color: colorWhite),
                    ),
                  ),
                  Text(
                    '0',
                    style: fontBig.copyWith(fontSize: 16),
                  ),
                  CircleAvatar(
                    backgroundColor: colorBlack.withOpacity(0.5),
                    maxRadius: 15,
                    child: Icon(
                      Icons.add,
                      color: colorWhite,
                    ),
                  ),
                ],
              )),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all<Size>(
                      Size(MediaQuery.of(context).size.width - 40, 30)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(colorGreen)),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckoutPage(shirtModel: shirtModel)));
              },
              child: const Text('Tambahkan Ke Troli'))
        ],
      ),
    );
  }
}
