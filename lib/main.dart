import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:untitled/AuthScreens/LoginScreen.dart';

import 'Controllers/ThemeController.dart';
import 'Thems/theme.dart';
import 'constant.dart';

void main() {
  GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeController = Get.put(ThemeController());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      themeMode: themeController.themeMode,

      // theme: ThemeData(
      //   appBarTheme: const AppBarTheme(
      //       elevation: 5.0,
      //       surfaceTintColor: Colors.transparent,
      //       backgroundColor: kWhiteColor),
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      //   useMaterial3: true,
      // ),
      home: LoginScreen(),
    );
  }
}


