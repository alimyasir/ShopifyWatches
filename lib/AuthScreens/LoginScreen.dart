import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/HomeScreens/HomeNavScreen.dart';
import '../Widgets/customTextField.dart';
import '../constant.dart';
import 'RegisterScreen.dart';
import 'ResetPassword.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text(
                //   'Welcome Back To ',
                //   style: kBigHeadingText,
                // ),

                Image.asset(
                  'images/appify logo.png',
                  color: kRedColor,
                  height: 80,
                ),
                20.height,
                customTextField(
                  labelText: 'Enter Your Email',
                  hintText: '',
                ),
                10.height,
                customTextField(
                  labelText: 'Enter Your Password',
                  hintText: 'Enter Your Password',
                  suffixIcon: const Icon(Icons.remove_red_eye),
                ),
                20.height,
                GestureDetector(
                    onTap: () {
                      Get.to(() => const ResetPassword());
                    },
                    child: Text('Reset Password',
                        style: kSubHeadingText.copyWith(color: kRedColor))),
                15.height,
                Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: (){
                      Get.offAll(()=>HomeNavScreen());
                    },
                    child: Container(
                      height: 50.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: kRedColor,
                          borderRadius: BorderRadius.circular(kDefaultRadius)),
                      child: Center(
                          child: Text(
                            'Log In',
                            style: kSubHeadingWhiteText,
                          )),
                    ),
                  ),
                ),

                /// Add Button
                // kPrimaryButton(
                //     btnText: 'Sign In With Email',
                //     onTap: () {
                //       Get.offAll(() => const HomeSportScreen());
                //     }),
                15.height,
                Text('Or', style: kSubHeadingText.copyWith(color: kGreyColor)),
                15.height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/google.png',
                      height: 40,
                      width: 40,
                    ),
                    25.width,
                    Image.asset(
                      'images/facebook_icon.png',
                      height: 40,
                      width: 40,
                    ),
                  ],
                ),
                30.height,
                RichText(
                  text: TextSpan(
                      text: "Don't have an Account?",
                      style: kPrimaryText.copyWith(color: kBlackColor),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' Create Account ',
                            style: kSecondaryText.copyWith(
                                color: kRedColor,
                                decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.to(() => const RegisterScreen());
                              }),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
