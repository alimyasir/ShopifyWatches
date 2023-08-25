import 'package:flutter/material.dart';
import 'package:untitled/HomeScreens/HomeScreen.dart';
import 'package:untitled/SearchScreen.dart';

import '../CartScreens/CartScreen.dart';
import '../CategoryScreens/CategoryScreen.dart';
import '../SettingScreens/SettingScreen.dart';
import '../WishlistScreens/WishlistScreen.dart';
import '../constant.dart';

class HomeNavScreen extends StatefulWidget {

  const HomeNavScreen({super.key});

  @override
  State<HomeNavScreen> createState() => _HomeNavScreenState();
}

class _HomeNavScreenState extends State<HomeNavScreen> {

  int selectedIndex = 0;

  onClick(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar:  BottomNavigationBar(
          // backgroundColor: kWhiteColor,
          type: BottomNavigationBarType.fixed,
          elevation: 0.0,
          selectedItemColor: kRedColor,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          onTap: onClick,
          currentIndex: selectedIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.near_me), label: 'New Lounch'),BottomNavigationBarItem(
                icon: Icon(Icons.search), label: 'search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_shopping_cart), label: 'My Cart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: 'Profile'),
          ],
        ),
        body:  selectedIndex == 0
            ?  HomeScreen()
            : selectedIndex == 1
            ? CategoryScreen()
            : selectedIndex == 2
            ?  SearchScreen()
            : selectedIndex == 3
            ? CartScreen()
            : SettingScreen()
    );
  }
}
