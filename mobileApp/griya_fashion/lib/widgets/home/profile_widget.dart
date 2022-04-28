import 'package:flutter/material.dart';
import 'package:griya_fashion/widgets/pesanan_widget.dart';
import 'package:griya_fashion/widgets/profile_top_widget.dart';

class ProfileWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileTop(),
        PesananWidget()
      ],
    );
  }

}