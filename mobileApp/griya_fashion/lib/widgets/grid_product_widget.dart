import 'package:flutter/material.dart';
import 'package:griya_fashion/model/shirt.dart';
import 'package:griya_fashion/widgets/cart_product_widget.dart';

class GridProductWidget extends StatelessWidget {
  List<ShirtModel> shirtModel;

  GridProductWidget({required this.shirtModel});
  @override
  Widget build(BuildContext context) {
    print(ShirtModel);
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 1.2),
        mainAxisSpacing: 16,
        crossAxisCount: 2,
        crossAxisSpacing: 16.0,
      ),
      itemCount: shirtModel.length,
      itemBuilder: (context, index) {
        return CartProductWidget(
            count: '1000',
            des: shirtModel[index].description,
            text: shirtModel[index].title,
            image: shirtModel[index].image,
            price: shirtModel[index].price);
      },
    );
  }
}
