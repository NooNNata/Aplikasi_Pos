import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:griya_fashion/cubit/shirt_state.dart';
import 'package:griya_fashion/services/shirt.dart';

class BlocShirt extends Cubit<ShirtState> {
  BlocShirt() : super(InitStateShirt());

  void getShirtFromDb() async {
    try {
      emit(LoadingStateShirt());
      var data = await Shirt().shirtData();
      emit(SuccessStateShirt(shirtModel: data));
    } catch (e) {
      emit(ErrorStateShirt(error: e.toString()));
    }
  }
}
