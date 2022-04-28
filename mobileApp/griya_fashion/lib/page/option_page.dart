import 'package:flutter/material.dart';
import 'package:griya_fashion/utils/color_file.dart';
import 'package:griya_fashion/utils/font_data.dart';
import 'package:griya_fashion/widgets/option_widget.dart';

class OptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColorMain,
      appBar: AppBar(
        title: Text(
          'Option',
          style: fontBig.copyWith(fontSize: 18, color: colorBlack),
        ),
        backgroundColor: colorWhite,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          color: colorBlack,
        ),
      ),
      body: Column(
        children: [
          OptionWidget(profile: true,)
        ],
      ),
    );
  }
}
