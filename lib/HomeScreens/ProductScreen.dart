import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/constant.dart';

import '../Controllers/ThemeController.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Pruducts',style: kAppBarTitleStyle,),
      ),
      body: Padding(
        padding:  const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: kYellowColor,
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(image: NetworkImage('https://source.unsplash.com/random/300?5'),fit: BoxFit.cover),

              ),

            ),
            10.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: kOrangeColor,
                    borderRadius: BorderRadius.circular(5)
                  ),
                ),
                10.width,
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      color: kOrangeColor,
                      borderRadius: BorderRadius.circular(5)
                  ),
                ),
                10.width,
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      color: kOrangeColor,
                      borderRadius: BorderRadius.circular(5)
                  ),
                ),
                
              ],
            ),
            10.height,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9.0),
              child: Text('SIZE',style: kHeadingText,),
            ),
            10.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: themeController.isDark ? Colors.black : Colors.white,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: const Center(child: Text('S')),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color:  themeController.isDark ? Colors.black : Colors.white,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: const Center(child: Text('M')),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color:themeController.isDark ? Colors.black : Colors.white,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: const Center(child: Text('L')),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color:themeController.isDark ? Colors.black : Colors.white,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: const Center(child: Text('XL')),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: themeController.isDark ? Colors.black : Colors.white,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: const Center(child: Text('XXL')),
                ),


              ],
            ),
            10.height,
            Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 9.0),
              child: Text('Girls Wonder Full Watches',style: kSubHeadingGrayText,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text('\$25.00',style: kHeadingText,),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: kRedColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text('Add To Bag',style: kHeadingText.copyWith(color: kWhiteColor),),
          ),
        ),
      ),

    );
  }
}
