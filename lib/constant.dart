import 'package:flutter/material.dart';
// import 'package:get_storage/get_storage.dart';
// import 'package:google_fonts/google_fonts.dart';

/// App Colors
// const Color kPrimaryColor = Color(0xff514eb6);
const Color kPrimaryColor = Colors.green;
const Color kBlackColor = Colors.black;
Color kScaffoldBgColor = Colors.grey.shade50;
const Color kGreenColor = Colors.green;
const Color kBlueColor = Colors.blue;
const Color kYellowColor = Colors.yellow;
final Color kRedColor = Colors.red.shade400;
const Color kTealColor = Colors.teal;
const Color kOrangeColor = Colors.orange;
const Color kGreyColor = Colors.grey;
const Color cardColor = Colors.white;
const Color kWhiteColor = Colors.white;
const Color kDarkGrayColor = Color(0xff181818);


/// local storage
// final GetStorage kStorage = GetStorage();

/// App Padding and margin
double kDefaultPadding = 8.0;
double kDefaultMargin = 16.0;
double kDefaultRadius = 8.0;

/// Media Query Size
var kSize = MediaQueryData.fromView(WidgetsBinding.instance.window).size;

extension SpaceXY on int {
  SizedBox get width => SizedBox(width: this.toDouble());
  SizedBox get height => SizedBox(height: this.toDouble());
}

/* App Text Styles */
TextStyle kAppBarTitleStyle = const TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
);


/// black Text Styles
TextStyle kPrimaryText = const TextStyle(
  fontSize: 12.0,
  fontWeight: FontWeight.w300,
);
TextStyle kSecondaryText = const TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w300,
);
TextStyle kSubHeadingText = const TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w500,
);
TextStyle kHeadingText = const TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
);
TextStyle kBigHeadingText = const TextStyle(
  fontSize: 24.0,
  fontWeight: FontWeight.bold,
);

/// white Text Styles
TextStyle kPrimaryWhiteText = const TextStyle(
  fontSize: 12.0,
  color: Colors.white,
  fontWeight: FontWeight.w300,
);
TextStyle kSecondaryWhiteText = const TextStyle(
  fontSize: 14.0,
  color: Colors.white,
  fontWeight: FontWeight.w300,
);
TextStyle kSubHeadingWhiteText = const TextStyle(
  fontSize: 16.0,
  color: Colors.white,
  fontWeight: FontWeight.w900,
);
TextStyle kHeadingWhiteText = const TextStyle(
  fontSize: 18.0,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);
TextStyle kBigHeadingWhiteText = const TextStyle(
  fontSize: 22.0,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

/// gray Text Styles
TextStyle kPrimaryGrayText = const TextStyle(
  fontSize: 12.0,
  fontWeight: FontWeight.w300,
  color: kGreyColor
);
TextStyle kSecondaryGrayText = const TextStyle(
  fontSize: 14.0,
  fontWeight: FontWeight.w300,
    color: kGreyColor

);
TextStyle kSubHeadingGrayText = const TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w500,
    color: kGreyColor

);
TextStyle kHeadingGrayText = const TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
    color: kGreyColor

);
TextStyle kBigHeadingGrayText = const TextStyle(
  fontSize: 24.0,
  fontWeight: FontWeight.bold,
    color: kGreyColor

);
