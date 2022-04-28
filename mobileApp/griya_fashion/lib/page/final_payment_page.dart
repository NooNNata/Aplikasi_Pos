import 'package:flutter/material.dart';
import 'package:griya_fashion/utils/color_file.dart';
import 'package:griya_fashion/utils/font_data.dart';

class FinalPaymentPage extends StatelessWidget {
  String price;
  FinalPaymentPage({required this.price});
  Widget textTotal(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Subtotal',
                  style: fontBig.copyWith(fontSize: 15),
                ),
                Text(price, style: fontRegular.copyWith(fontSize: 15)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Biaya Kirim',
                  style: fontBig.copyWith(fontSize: 15),
                ),
                Text('Gratis', style: fontRegular.copyWith(fontSize: 15)),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: fontBig.copyWith(fontSize: 15),
                ),
                Text(price, style: fontBig.copyWith(fontSize: 15)),
              ],
            ),
            ElevatedButton(
                style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(
                        Size(MediaQuery.of(context).size.width - 40, 30)),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(colorGreen)),
                onPressed: ()=>Navigator.pushNamedAndRemoveUntil(context, '/result', (route) => false),
                child: const Text('Konfirmasi Pembayaran'))
          ],
        ),
      ),
    );
  }

  Widget boxDec() {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: colorWhite, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '1. Pastikan Anda Memiliki Saldo Yang cukup',
            style: fontRegular,
          ),
          Text(
            '2. Pastikan Anda Membayar Sesui Nominal Tertera',
            style: fontRegular,
          ),
          Text(
            '3. masukan kode bank, kemudian diikuti dengan no Unik di atas',
            style: fontRegular,
          ),
          Text(
            '4. Simpan Bukti Transaksi',
            style: fontRegular,
          ),
          Text(
            '5. Selesai',
            style: fontRegular,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColorMain,
      appBar: AppBar(
        title: Text(
          'Final Payment',
          style: fontBig.copyWith(fontSize: 18),
        ),
        backgroundColor: colorWhite,
        leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back,
              color: colorBlack,
            )),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            '7767615454147',
            style: fontBig.copyWith(fontSize: 25),
          ),
          boxDec(),
          const Expanded(
            flex: 2,
            child: SizedBox()),
          textTotal(context)
        ],
      ),
    );
  }
}
