import 'package:flutter/material.dart';
import '../constant.dart';

GestureDetector kPrimaryButton({required String btnText, Function()? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50.0,
        width: double.infinity,
        decoration: BoxDecoration(
            color: kRedColor,
            borderRadius: BorderRadius.circular(kDefaultRadius)),
        child: Center(
            child: Text(
          btnText,
          style: kSubHeadingWhiteText,
        )),
      ),
    ),
  );
}
