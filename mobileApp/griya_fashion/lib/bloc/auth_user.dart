import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:griya_fashion/cubit/auth_state.dart';
import 'package:griya_fashion/services/login.dart';
import 'package:griya_fashion/services/register.dart';

class AuthUser extends Cubit<AuthState> {
  AuthUser() : super(InitAuth());

  void registerUser(
      {required String name,
      required String email,
      required String password,
      required String password_ver}) async {
    try {
      emit(LoadingAuth());

      var data = await Register().registerNewUser(
          name: name,
          email: email,
          password: password,
          password_ver: password_ver);
      emit(SuccessAuth(user: data.user));
    } catch (e) {
      emit(ErrorAuth(error: e.toString()));
    }
  }

  void loginUser({
    required String email,
    required String password,
  }) async {
    try {
      emit(LoadingAuth());
      var data = await Login().loginUser(
        email: email,
        password: password,
      );
      emit(SuccessAuth(user: data));
    } catch (e) {
      emit(ErrorAuth(error: e.toString()));
    }
  }
}
