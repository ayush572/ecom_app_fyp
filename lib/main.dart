import 'package:ecom_app/screens/sign_in_screen.dart';
import 'package:ecom_app/utils/color_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Ecomfyp());
}

class Ecomfyp extends StatelessWidget {
  const Ecomfyp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce App with AR',
      debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: backgroundColor,

        ),
        home: Scaffold(
          body: SignIn()

        )
    );
    }
}