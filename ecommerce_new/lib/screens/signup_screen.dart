
import 'package:ecommerce_new/resources/auth_resources.dart';
import 'package:ecommerce_new/screens/signin_screen.dart';
import 'package:ecommerce_new/utils/color_theme.dart';
import "package:flutter/material.dart";
import 'package:ecommerce_new/widgets/custom_main_button.dart';
import 'package:ecommerce_new/widgets/text_field.dart';
import 'package:ecommerce_new/utils/utils.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  AuthenticationMethods authenticationMethods = AuthenticationMethods();
  bool isLoading = false;

  @override
  void dispose(){
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    addressController.dispose();
    passwordController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize(context);
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
                  // Image.asset(
                  //   "assets/amazon_logo.png",
                  //   height: screenSize.height * 0.1,
                  //   width: screenSize.width,
                  // ),
                  const SizedBox(
                    height: 15
                  ),
                  SizedBox(
                    height: screenSize.height * 0.7,
                    child: FittedBox(
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        height: screenSize.height,
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

                            const Text("Sign Up", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 33),),

                            TextFieldWidget(
                              title: "Name",
                              controller: nameController,
                              obscureText: false,
                              hintText: "Enter your name",
                            ),
                            TextFieldWidget(
                              title: "Address",
                              controller: addressController,
                              obscureText: false,
                              hintText: "Enter your address",
                            ),
                            TextFieldWidget(
                              title: "Email",
                              controller: emailController,
                              obscureText: false,
                              hintText: "Enter your email",
                            ),
                            TextFieldWidget(
                              title: "Password",
                              controller: passwordController,
                              obscureText: true,
                              hintText: "Enter your password",
                            ),
                            Align(alignment: Alignment.center,
                                child:
                                CustomMainButton(color: yellowColor,
                                    isLoading: isLoading,
                                    onPressed: () async {
                                      setState(() {
                                        isLoading = true;
                                      });
                                      String output = await authenticationMethods.signUpUser(
                                          name: nameController.text,
                                          email: emailController.text,
                                          address: addressController.text,
                                          password: passwordController.text
                                      );
                                      setState(() {
                                        isLoading = false;
                                      });
                                      if(output == "success") {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (_) =>
                                                const SignInScreen()));
                                      }
                                      else {
                                        Utils().showSnackBar(
                                            context: context, content: output);
                                      }

                                    }, child: const Text("Sign Up",
                                  style: TextStyle(letterSpacing: 0.6),))
                            ),

                          ],
                        ),

                      ),
                    ),
                  ),


                  CustomMainButton(
                      color: Colors.grey,
                      isLoading: false,
                      onPressed: (){
                        Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context){
                        return const SignInScreen();
                      }));},
                      child: const Text("Back", style: TextStyle(letterSpacing: 0.6, color: Colors.black),))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
