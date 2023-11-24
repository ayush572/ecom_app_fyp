import 'package:ecommerce_new/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_new/widgets/custom_main_button.dart';
import 'package:ecommerce_new/widgets/text_field.dart';
import 'package:ecommerce_new/screens/signup_screen.dart';




class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

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
                  const SizedBox(height: 40.0),
                  Container(
                    padding: const EdgeInsets.all(15),
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
                        const Text("Sign In", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 33),),
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
                            CustomMainButton(color: Colors.orange,
                                isLoading: false,
                                onPressed: (){}, child: const Text("Sign In",
                                  style: TextStyle(letterSpacing: 0.6),))
                        ),

                      ],
                    ),

                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                            height: 1,
                            color: Colors.grey
                        ),
                      ),
                      const Text("New to Shoppers?", style: TextStyle(color: Colors.grey)),
                      Expanded(
                        child: Container(
                            height: 1,
                            color: Colors.grey
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  CustomMainButton(color: Colors.grey, isLoading: true, onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context){
                          return const SignUpScreen();
                        }));
                  }, child: const Text("Create Account", style: TextStyle(letterSpacing: 0.6),))
                ],
              ),
            ),
          ),
        ),
      ),
    );



  }
}
