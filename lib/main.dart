import 'package:ecom_app/screens/sign_in_screen.dart';
import 'package:ecom_app/utils/color_theme.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  //if the device is android or web
  // if(kIsWeb){
  //
  //   //await keyword added as it's a future
  //   await Firebase.initializeApp(options: const FirebaseOptions(
  //       apiKey: "AIzaSyCyVJ72OX_xdKL9BEkBYIGonlwqAlgukAE",
  //       authDomain: "fypecom-123ae.firebaseapp.com",
  //       projectId: "fypecom-123ae",
  //       storageBucket: "fypecom-123ae.appspot.com",
  //       messagingSenderId: "699622495862",
  //       appId: "1:699622495862:web:a81f6a60fd8bd2a174b157",
  //       measurementId: "G-J3W0Y9HPD5"
  //   ));
  // }else{
  //   Firebase.initializeApp();
  // }
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
        home: const Scaffold(
          body: SignIn()
        )
    );
    }
}