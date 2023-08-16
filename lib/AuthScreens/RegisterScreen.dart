import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../widgets/ButtonWidgets.dart' as btn;
import '../Widgets/customTextField.dart';
import '../constant.dart';
import 'LoginScreen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
                Image.asset(
                  'images/appify logo.png',
                  color: kRedColor,
                  height: 80,
                ),
                20.height,
                customTextField(
                  labelText: 'First Name',
                  hintText: 'Enter Your First Name',
                ),
                10.height,
                customTextField(
                  labelText: 'Last Name',
                  hintText: 'Enter Your Last Name',
                ),
                10.height,
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
                RichText(
                  text: TextSpan(
                      text: 'By Signing up, you agree to our',
                      style: kPrimaryText.copyWith(color: kBlackColor),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' Privacy and Terms ',
                            style: kPrimaryText.copyWith(
                                color: kRedColor,
                                decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()..onTap = () {})
                      ]),
                ),
                40.height,
                btn.kPrimaryButton(
                    btnText: 'Create an account',
                    onTap: () {
                      // Get.offAll(()=>const HomeSportScreen());
                    }),
                20.height,
                Text('Or', style: kSubHeadingText.copyWith(color: kGreyColor)),
                20.height,
                RichText(
                  text: TextSpan(
                      style: kPrimaryText.copyWith(color: kBlackColor),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' Login to your Account ',
                            style: kPrimaryText.copyWith(
                                color: kRedColor,
                                decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.to(() => const LoginScreen());
                              })
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
