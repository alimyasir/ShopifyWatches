import 'package:flutter/material.dart';
import '../../widgets/ButtonWidgets.dart' as btn;
import '../Widgets/customTextField.dart';
import '../constant.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.lock,
                size: 60,
                color: Colors.redAccent,
              ),
              20.height,
              Text(
                'Reset Your Password',
                style: kBigHeadingText,
              ),
              40.height,
              customTextField(
                labelText: 'Enter Your Email',
                hintText: '',
              ),
              40.height,
              btn.kPrimaryButton(
                btnText: 'Get Password Link',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
