import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:griya_fashion/bloc/auth_user.dart';
import 'package:griya_fashion/cubit/auth_state.dart';
import 'package:griya_fashion/utils/color_file.dart';
import 'package:griya_fashion/utils/font_data.dart';

import '../widgets/button_widget.dart';
import '../widgets/input_widget.dart';
import '../widgets/link_widget.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  

  TextEditingController email = TextEditingController(text: '');

  TextEditingController password = TextEditingController(text: '');

  Widget listLogin(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: Image.asset('assets/LOGO.png')),
        Text('Login User', style: fontBig),
        const SizedBox(
          height: 16,
        ),
        InputWidget(
          hintText: 'Masukan Email',
          text: 'Email',
          isPassword: false,
          controler: email,
        ),
        const SizedBox(
          height: 16,
        ),
        InputWidget(
          hintText: 'Masukan Password',
          text: 'Password ',
          isPassword: true,
          controler: password,
        ),
        const SizedBox(
          height: 32,
        ),
        BlocConsumer<AuthUser, AuthState>(
          builder: (context, state) {
            if (state is LoadingAuth) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Center(
              child: ButtonWidget(
                  title: 'Login',
                  colorButton: colorGreen,
                  action: () {
                    context
                        .read<AuthUser>()
                        .loginUser(email: email.text, password: password.text);
                  },
                  colorText: colorWhite),
            );
          },
          listener: (context, state) {
            if (state is SuccessAuth) {
              Navigator.pushNamed(context, '/home');
            }
            if (state is ErrorAuth) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(state.error)));
            }
          },
        ),
        const SizedBox(
          height: 15,
        ),
        Center(
          child: LinkWidget(
              action: () => Navigator.pop(context), text: 'Create Account'),
        ),
        const SizedBox(
          height: 80,
        ),
      ],
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 46, vertical: 20),
            child: listLogin(context)),
      ),
    );
  }
}
