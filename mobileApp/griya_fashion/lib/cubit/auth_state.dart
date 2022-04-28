import 'package:equatable/equatable.dart';
import 'package:griya_fashion/model/user.dart';

abstract class AuthState extends Equatable{

}

class InitAuth extends AuthState{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}

class ErrorAuth extends AuthState{
  String error;
  ErrorAuth({required this.error});
  @override
  // TODO: implement props
  List<Object?> get props => [error];

}

class LoadingAuth extends AuthState{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}

class SuccessAuth extends AuthState{
  User user;
  SuccessAuth({required this.user});

  @override
  // TODO: implement props
  List<Object?> get props => [user];
  
  
}