import 'package:flutter/material.dart';

class ImageDetailWidget extends StatelessWidget{
  String img;
  ImageDetailWidget({required this.img});
  @override
  Widget build(BuildContext context) {
   return SizedBox(
     height: 500,
     width: MediaQuery.of(context).size.width,
     child: Image.network(img, fit: BoxFit.fill,),
   );
  }

}