import 'package:equatable/equatable.dart';
import 'package:griya_fashion/model/shirt.dart';

abstract class ShirtState extends Equatable {}

class InitStateShirt extends ShirtState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class LoadingStateShirt extends ShirtState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class ErrorStateShirt extends ShirtState {
  String error;
  ErrorStateShirt({required this.error});
  @override
  // TODO: implement props
  List<Object?> get props => [error];
}

class SuccessStateShirt extends ShirtState {
  List<ShirtModel> shirtModel;
  SuccessStateShirt({required this.shirtModel});

  @override
  // TODO: implement props
  List<Object?> get props => [shirtModel];
}
