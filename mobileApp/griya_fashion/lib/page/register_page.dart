import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:griya_fashion/bloc/auth_user.dart';
import 'package:griya_fashion/cubit/auth_state.dart';
import 'package:griya_fashion/services/shirt.dart';
import 'package:griya_fashion/utils/color_file.dart';
import 'package:griya_fashion/utils/font_data.dart';
import 'package:griya_fashion/widgets/button_widget.dart';
import 'package:griya_fashion/widgets/input_widget.dart';
import 'package:griya_fashion/widgets/link_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterPage extends StatelessWidget {
  TextEditingController name = TextEditingController(text: '');
  TextEditingController email = TextEditingController(text: '');
  TextEditingController password = TextEditingController(text: '');
  TextEditingController password_ver = TextEditingController(text: '');





  // NOTE: List Input
  Widget listInput(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: Image.asset('assets/LOGO.png')),
        Text('Register New User', style: fontBig),
        const SizedBox(
          height: 16,
        ),
        InputWidget(
          hintText: 'Masukan Nama',
          text: 'Nama',
          isPassword: false,
          controler: name,
        ),
        const SizedBox(
          height: 16,
        ),
        InputWidget(
          hintText: 'Email',
          text: 'Email',
          isPassword: false,
          controler: email,
        ),
        const SizedBox(
          height: 16,
        ),
        InputWidget(
          hintText: 'Password',
          text: 'Password',
          isPassword: true,
          controler: password,
        ),
        const SizedBox(
          height: 16,
        ),
        InputWidget(
          hintText: 'Password Verify',
          text: 'Password Verify',
          isPassword: true,
          controler: password_ver,
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
                  title: 'Register',
                  colorButton: colorGreen,
                  action: () async{
                    context.read<AuthUser>().registerUser(
                        name: name.text,
                        email: email.text,
                        password: password.text,
                        password_ver: password_ver.text);

                    SharedPreferences pref = await SharedPreferences.getInstance();
                    pref.setString('email', email.text);
                  },
                  colorText: colorWhite),
            );
          },
          listener: (context, state) {
            if (state is ErrorAuth) {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.error.toString())));
            }
            if (state is SuccessAuth) {
              print(state.user);
            }
          },
        ),
        const SizedBox(
          height: 15,
        ),
        Center(
          child: LinkWidget(
              action: () => Navigator.pushNamed(context, '/login'),
              text: 'Have Account'),
        ),
        const SizedBox(
          height: 80,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(49), child: listInput(context)),
      ),
    );
  }
}
