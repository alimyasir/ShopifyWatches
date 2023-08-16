import 'package:flutter/material.dart';
import '../constant.dart';

TextField customTextField(
    {required hintText,
    required labelText,
    TextEditingController? controller,
    Widget? suffixIcon,
    TextInputType? keyboardType,
    int? maxLines}) {
  return TextField(
    cursorColor: kRedColor,
    textCapitalization: TextCapitalization.sentences,
    controller: controller,
    keyboardType: keyboardType ?? TextInputType.text,
    maxLines: maxLines ?? 1,
    decoration: InputDecoration(
      hintText: hintText ?? '',
      hintStyle: kSecondaryGrayText,
      labelStyle: kSubHeadingText.copyWith(
        color: kRedColor,
      ),
      label: Text(labelText ?? '',
          style: kSubHeadingText.copyWith(color: Colors.black)),
      focusColor: Colors.black,
      suffixIcon: suffixIcon,
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.shade200),
      ),
    ),
  );
}
