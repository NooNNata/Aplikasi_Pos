import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:griya_fashion/bloc/shirt_bloc.dart';
import 'package:griya_fashion/cubit/shirt_state.dart';
import 'package:griya_fashion/widgets/grid_product_widget.dart';
import 'package:griya_fashion/widgets/kategori_widget.dart';
import 'package:griya_fashion/widgets/search_widget.dart';
import 'package:lottie/lottie.dart';

class RekomendasiWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.read<BlocShirt>().getShirtFromDb();
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SearchWidget(),
          const SizedBox(
            height: 20,
          ),
          Categori(),
          const SizedBox(
            height: 20,
          ),
          Image.asset('assets/diskon.png'),
          const SizedBox(
            height: 20,
          ),
          BlocConsumer<BlocShirt, ShirtState>(
            builder: (context, state) {
              if (state is SuccessStateShirt) {
                return GridProductWidget(
                  shirtModel: state.shirtModel,
                );
              }
              return  Center(
                child: LottieBuilder.asset('assets/loading2.json', width: 100),
              );
            },
            listener: (context, state) {
              if(state is ErrorStateShirt){
                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.error)));
              }
              
            },
          )
        ],
      ),
    );
  }
}
