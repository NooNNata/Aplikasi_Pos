import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:griya_fashion/bloc/auth_user.dart';
import 'package:griya_fashion/bloc/shirt_bloc.dart';
import 'package:griya_fashion/page/checkout_page.dart';
import 'package:griya_fashion/page/choose_pay_page.dart';
import 'package:griya_fashion/page/final_payment_page.dart';
import 'package:griya_fashion/page/get_started_page.dart';
import 'package:griya_fashion/page/home_page.dart';
import 'package:griya_fashion/page/login_page.dart';
import 'package:griya_fashion/page/option_page.dart';
import 'package:griya_fashion/page/register_page.dart';
import 'package:griya_fashion/page/result_page.dart';
import 'package:griya_fashion/page/splash_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthUser()),
        BlocProvider(create: (context)=>BlocShirt()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '',
        routes: {
          '/': (context) => const SplashPage(),
          '/get_started': (context) => const GetStatertedPage(),
          '/register': (context) => RegisterPage(),
          '/login': (context) => LoginPage(),
          '/home': (context) => HomePage(),
          '/option': (context) => OptionPage(),
          '/result': (context) => ResultPage()
        },
      ),
    );
  }
}
