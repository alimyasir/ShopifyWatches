import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


class ThemeController extends GetxController {
  final _isDark = false.obs;
  final box = GetStorage();
  ThemeMode themeMode = ThemeMode.light;


  @override
  void onInit() {
    super.onInit();
    _isDark.value = box.read('isDark') ?? false;
     Get.changeThemeMode(_isDark.value ? ThemeMode.dark : ThemeMode.light);
  }

  bool get isDark => _isDark.value;
  void toggleTheme() {
    _isDark.toggle();
    box.write('isDark', _isDark.value);
    Get.changeThemeMode(_isDark.value ? ThemeMode.dark : ThemeMode.light);
  }
}
