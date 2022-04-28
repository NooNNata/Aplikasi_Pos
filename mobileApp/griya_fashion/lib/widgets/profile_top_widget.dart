import 'package:flutter/material.dart';
import 'package:griya_fashion/utils/color_file.dart';
import 'package:griya_fashion/utils/font_data.dart';

class ProfileTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    
    margin: const EdgeInsets.only(left: 21, right: 21, top: 45),
      padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: colorWhite,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/img_profile.png',
                width: 70,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Nama User',
                      style: fontBig.copyWith(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  IconButton(onPressed: () {
                    Navigator.pushNamed(context, '/option');
                  }, icon: const Icon(Icons.settings))
                ],
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    'Mengikuti',
                    style: fontBig.copyWith(fontSize: 15),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('21')
                ],
              ),
              Column(
                children: [
                  Text(
                    'Mengikuti',
                    style: fontBig.copyWith(fontSize: 15),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('21')
                ],
              ),
              Column(
                children: [
                  Text(
                    'Mengikuti',
                    style: fontBig.copyWith(fontSize: 15),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('21')
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
