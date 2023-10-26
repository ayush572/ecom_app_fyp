import 'package:ecom_app/utils/constants.dart';
import 'package:ecom_app/widgets/custom_main_button.dart';
import 'package:ecom_app/widgets/text_field.dart';
import 'package:flutter/material.dart';

import 'package:ecom_app/utils/constants.dart';
import 'package:ecom_app/widgets/text_field.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: screenSize.height,
            width: screenSize.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
              child: Column(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/amazon_logo.png",
                    height: screenSize.height * 0.1,
                    width: screenSize.width,
                  ),
                  SizedBox(height: 40.0),
                  Container(
                    padding: EdgeInsets.all(15),
                    height: screenSize.height * 0.6,
                    width: screenSize.width * 0.8,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Sign In", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 33),),
                        TextFieldWidget(
                          title: "Email",
                          controller: emailController,
                          obscureText: false,
                          hintText: "Enter your email",
                        ),
                        TextFieldWidget(
                          title: "Password",
                          controller: emailController,
                          obscureText: true,
                          hintText: "Enter your password",
                        ),
                        Align(alignment: Alignment.center,
                            child:
                            CustomMainButton(child: Text("Sign In",
                              style: TextStyle(letterSpacing: 0.6),),
                                color: Colors.orange,
                                isLoading: true,
                                onPressed: (){})
                        ),

                      ],
                    ),

                  ),
                  SizedBox(height: 20.0),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.grey
                        ),
                      ),
                      Text("New to Shoppers?", style: TextStyle(color: Colors.grey)),
                      Expanded(
                        child: Container(
                            height: 1,
                            color: Colors.grey
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  CustomMainButton(child: Text("Create Account", style: TextStyle(letterSpacing: 0.6),), color: Colors.grey, isLoading: false, onPressed: (){})
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}