import 'package:flutter/material.dart';
import 'package:griya_fashion/utils/color_file.dart';
import 'package:griya_fashion/utils/font_data.dart';

class OptionWidget extends StatelessWidget {
  bool profile;
  OptionWidget({required this.profile});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: colorWhite, borderRadius: BorderRadius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    profile ? 'Informasi Akun' : 'Detail Checkout',
                    style: fontBig.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  const Icon(
                    Icons.edit,
                    size: 25,
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Alamat',
                style: fontBig.copyWith(
                  fontSize: 15,
                ),
              ),
              Text(
                'Jl.Perintis Kemerdekaan No.115 ',
                style: fontRegular.copyWith(
                    fontSize: 14, color: colorBlack.withOpacity(0.5)),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Provinsi',
                style: fontBig.copyWith(
                  fontSize: 15,
                ),
              ),
              Text(
                'Jawa Tengah',
                style: fontRegular.copyWith(
                    fontSize: 14, color: colorBlack.withOpacity(0.5)),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Kota',
                style: fontBig.copyWith(
                  fontSize: 15,
                ),
              ),
              Text(
                'Kota Tegal',
                style: fontRegular.copyWith(
                    fontSize: 14, color: colorBlack.withOpacity(0.5)),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Kode Pos',
                style: fontBig.copyWith(
                  fontSize: 15,
                ),
              ),
              Text(
                '12345',
                style: fontRegular.copyWith(
                    fontSize: 14, color: colorBlack.withOpacity(0.5)),
              ),
            ],
          ),
        ),
        profile
            ? ElevatedButton(
                style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(
                        Size(MediaQuery.of(context).size.width - 40, 30)),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red)),
                onPressed: () {},
                child: const Text('Logout'))
            : Container()
      ],
    );
  }
}
