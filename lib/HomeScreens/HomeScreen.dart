import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/constant.dart';

import '../Controllers/ThemeController.dart';
import 'ProductScreen.dart';

class HomeScreen extends StatelessWidget {
  List<String> productCategories = [
    'Boys',
    'MAn',
    'Women',
    'Girl',
  ];

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'New Collection',
          style: kAppBarTitleStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: ListView.builder(
                    itemCount: productCategories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(5),
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // color: kWhiteColor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                height: 35,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: kGreyColor.withOpacity(0.1)),
                                child: const Icon(
                                  Icons.watch_outlined,
                                  color: kBlueColor,
                                )),
                            Text(
                              productCategories[index],
                              style: kSubHeadingText,
                            )
                          ],
                        ),
                      );
                    }),
              ),
              DefaultSelectionStyle(
                cursorColor: themeController.isDark ? Colors.white : Colors.teal,
                child: CupertinoSearchTextField(
                  backgroundColor: themeController.isDark ? Colors.black : Colors.white,
                  padding: const EdgeInsets.all(10),
                  prefixIcon: Container(
                    height: 45,
                  ),
                  style:   TextStyle(
                    fontSize: 14.0,
                    color:themeController.isDark ? Colors.white : Colors.black,
                  ),
                  autocorrect: true,
                  onChanged: (value) {},
                  onSubmitted: (value) {
                    // controller.homeSearch(value);
                    // setState(() {});
                  },
                  // decoration: BoxDecoration(
                  //   color: kWhiteColor,
                  //   borderRadius: BorderRadius.circular(25),
                  //   border: Border.all(
                  //     width: 1,
                  //     color: kGreyColor.withOpacity(0.1),
                  //   ),
                  // ),
                ),
              ),
              10.height,
              GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.7,
                    crossAxisCount: 2,
                    // mainAxisSpacing: 3,
                    crossAxisSpacing: 2
                  ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  primary: false,
                  itemBuilder: (BuildContext, context) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(() => const ProductScreen());
                      },
                      child: Container(
                        // margin: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          // color: kOrangeColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 160,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://source.unsplash.com/random/300?5'),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.grey),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.favorite_border_rounded,
                                      color: kWhiteColor,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                'Girls Watch',
                                style: kSubHeadingText,
                              ),
                              subtitle: Text(
                                maxLines: 2,
                                '\$500.00',
                                style: kSecondaryGrayText,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
