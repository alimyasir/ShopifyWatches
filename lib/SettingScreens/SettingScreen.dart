import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/SettingScreens/LanguageScreen.dart';
import 'package:untitled/SettingScreens/PrivacyScreen.dart';
import 'package:untitled/SettingScreens/TermAndCondition.dart';
import 'package:untitled/Widgets/ButtonWidgets.dart';
import 'package:untitled/WishlistScreens/WishlistScreen.dart';
import 'package:untitled/constant.dart';

import '../Controllers/ThemeController.dart';

class SettingScreen extends StatelessWidget {
  final themeController = Get.find<ThemeController>();

   SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting',style: kAppBarTitleStyle,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage('https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-260nw-1714666150.jpg'),fit: BoxFit.cover),
                    color: kGreyColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12)
                  ),
                ),
              ),
              ListTile(
                leading: Text('Name',style: kHeadingText.copyWith(fontSize: 15),),
                title: Text('Ahmad Faraz',style: kSubHeadingGrayText,),
              ),
              ListTile(
                leading: Text('Gender',style: kHeadingText.copyWith(fontSize: 15),),
                title:Row(children: [
                  Container(
                  height: 25,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                      color: kWhiteColor,
                    border: Border.all(color: kGreyColor.withOpacity(0.2)),
                  ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.radio_button_checked_sharp,size: 12,),
                        Text('MAle',style: kSubHeadingGrayText.copyWith(fontSize: 14),)
                      ],
                    ),
                ),
                  10.width,
                  Container(
                    height: 25,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                      color: kWhiteColor,
                      border: Border.all(color: kGreyColor.withOpacity(0.2)),
                  ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.radio_button_checked_sharp,size: 12,),
                        Text('FemAle',style: kSubHeadingGrayText.copyWith(fontSize: 14),)
                      ],
                    ),
                ),
                ],
                )
              ),
              ListTile(
                leading: Text('Age',style: kHeadingText.copyWith(fontSize: 15),),
                title: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text('50 Year',style: kSubHeadingGrayText,),
                ),
              ),
              ListTile(
                leading: Text('Email',style: kHeadingText.copyWith(fontSize: 15),),
                title: Text('ahmadfaraz@gmail.com',style: kSubHeadingGrayText,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Settings",style: kHeadingText,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: kGreyColor.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: Icon(Icons.language),
                          ),
                          title: Text('Wishlist',style: kSubHeadingText,),
                          trailing: Icon(Icons.chevron_right),
                          onTap: (){
                            Get.to(()=>WishlistScreen());
                          },
                        ),
                        ListTile(
                          leading: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: kGreyColor.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: Icon(Icons.language),
                          ),
                          title: Text('Language',style: kSubHeadingText,),
                          trailing: Icon(Icons.chevron_right),
                          onTap: (){
                            Get.to(()=>LanguageScreen());
                          },
                        ),
                        ListTile(
                          leading: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: kGreyColor.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: Icon(Icons.privacy_tip_outlined),
                          ),
                          title: Text('Privacy',style: kSubHeadingText,),
                          trailing: Icon(Icons.chevron_right),
                          onTap: (){
                            Get.to(()=>PrivacyScreen());
                          },
                        ),
                        10.height,
                        ListTile(
                          leading: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: kGreyColor.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: Icon(Icons.notifications),
                          ),
                          title: Text('Notification',style: kSubHeadingText,),
                          trailing: Icon(Icons.chevron_right),
                        ),
                        10.height,
                        ListTile(
                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                            size: 17,
                          ),
                          leading: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: kGreyColor.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: Icon(Icons.confirmation_num),
                          ),
                          title: Obx(
                                ()=> Text(
                              themeController.isDark ? 'Light Mood' : 'Dark Mood',
                              style: kSecondaryText.copyWith(
                                color: themeController.isDark ? Colors.white : Colors.black,
                                // color: themeController.isDark ? Colors.black : Colors.white,
                              ),
                            ),
                          ),
                          // title: Obx(
                          //       () => ListTile(
                          //         title: Padding(
                          //           padding: const EdgeInsets.only(right: 38.0),
                          //           child: Text(
                          //             themeController.isDark ? 'Light Mood' : 'Dark Mood',
                          //             style: kSecondaryText.copyWith(
                          //               color: themeController.isDark ? Colors.white : Colors.black,
                          //               // color: themeController.isDark ? Colors.black : Colors.white,
                          //             ),
                          //           ),
                          //         ),
                          //         onTap: () => themeController.toggleTheme(),
                          //       ),
                          // ),
                          onTap: () => themeController.toggleTheme(),
                        ),
                        10.height,
                        ListTile(
                          leading: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: kGreyColor.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: Icon(Icons.confirmation_num),
                          ),
                          title: Text('Terms&Conditions',style: kSubHeadingText,),
                          trailing: Icon(Icons.chevron_right),
                          onTap: (){
                            Get.to(()=>TermAndCondition());
                          },
                        ),
                        10.height,
                        ListTile(
                          leading: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: kGreyColor.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: Icon(Icons.question_mark),
                          ),
                          title: Text('Help Center',style: kSubHeadingText,),
                          trailing: Icon(Icons.chevron_right),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              kPrimaryButton(btnText: 'Log Out')
              
            ],
          ),
        ),
      ),
      // bottomNavigationBar: kPrimaryButton(btnText: 'Log Out'),
    );
  }
}
