import 'package:flutter/material.dart';
import 'package:griya_fashion/utils/color_file.dart';
import 'package:griya_fashion/utils/font_data.dart';
import 'package:lottie/lottie.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Success',
                style: fontBig.copyWith(fontSize: 35, color: colorGreen),
              ),
              const SizedBox(
                height: 50,
              ),
              Lottie.asset('assets/success.json', width: 200),
              SizedBox(height: 80,),
               ElevatedButton(
                style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(
                        Size(MediaQuery.of(context).size.width - 40, 30)),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(colorGreen)),
                onPressed: ()=>Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false),
                child: const Text('Finish'))
            ],
          ),
        ),
      ),
    );
  }
}
