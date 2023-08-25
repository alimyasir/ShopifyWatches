import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'Controllers/ThemeController.dart';
import 'constant.dart';


class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
    return Scaffold(
       body: Padding(
         padding: const EdgeInsets.only(left: 10,right: 10,top: 50.0),
         child: SingleChildScrollView(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               DefaultSelectionStyle(
                 cursorColor:themeController.isDark ? Colors.white : Colors.teal,
                 child: CupertinoSearchTextField(
                   padding: const EdgeInsets.all(10),
                   // prefixIcon: Container(
                   //   height: 45,
                   // ),
                   style:  TextStyle(
                     fontSize: 14.0,
                     color: themeController.isDark ? Colors.white : Colors.black,
                   ),
                   autocorrect: true,
                   onChanged: (value) {},
                   onSubmitted: (value) {
                     // controller.homeSearch(value);
                     // setState(() {});
                   },
                   // decoration: BoxDecoration(
                   //   // color: cardColor,
                   //   borderRadius: BorderRadius.circular(17),
                   //   // border: Border.all(
                   //   //   width: 1,
                   //   //   color: kGreyColor,
                   //   // ),
                   // ),
                 ),
               ),
               10.height,
               Text('Your Results',style: kHeadingText,),
               ListView.builder(
                   shrinkWrap: true,
                   physics: NeverScrollableScrollPhysics(),
                   itemCount: 4,
                   itemBuilder: (context, index) {
                     // var category = dummyCategories[index];
                     return InkWell(
                       onTap: (){
                         // Get.to(()=>HomeProductScreen());
                       },
                       child: Container(
                           margin: EdgeInsets.all(5),
                           height: 110,
                           width: double.infinity,
                           decoration: BoxDecoration(
                             // color: kDefaultIconLightColor,
                               borderRadius: BorderRadius.circular(10)),
                           child: Row(
                             children: [
                               Container(
                                 height: 200,
                                 width: 120,
                                 decoration: BoxDecoration(
                                   image:   DecorationImage(
                                       image: NetworkImage(''),
                                       fit: BoxFit.fill),
                                   color: kGreyColor,
                                   borderRadius: BorderRadius.circular(10),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.only(left: 8.0),
                                       child: Text('Girls Watch', style: kHeadingText.copyWith(fontSize: 14),),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                       child: Text('\$60.00', style: kSecondaryGrayText,),
                                     ),
                                     // Padding(
                                     //   padding:
                                     //   const EdgeInsets.only(top: 20,left: 12),
                                     //   child: Text('\$40.00', style: kSecondaryText.copyWith(color: kRedColor),
                                     //   ),
                                     // )
                                     Padding(
                                       padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                       child: Row(
                                         children: [
                                           Icon(Icons.star_border_rounded),
                                           Icon(Icons.star_border_rounded),
                                           Icon(Icons.star_border_rounded),
                                           Icon(Icons.star_border_rounded),
                                           Icon(Icons.star_border_rounded),
                                         ],
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                               // const Padding(
                               //   padding: EdgeInsets.only(bottom: 40.0, left: 40),
                               //   child: Text('x1'),
                               // )
                             ],
                           )),
                     );
                   })
             ],
           ),
         ),
       ),
    );
  }
}
