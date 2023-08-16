import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/constant.dart';

import 'CatProductScreen.dart';

class CategoryScreen extends StatelessWidget {
  List<String> productCategories=[
    'MAn',
    'Women',
    'Girl',
  ];
   CategoryScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories",style: kAppBarTitleStyle,),
      ),
      body: Column(
        children: [
          ListView.builder(
            itemCount: productCategories.length,
              shrinkWrap: true,
              itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){
                Get.to(()=>CarProductScreen());
              },
              child: Container(
                margin: EdgeInsets.all(10),
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage('https://source.unsplash.com/random/300?2'),fit: BoxFit.cover),
                  color: kGreyColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Center(child: Text(productCategories[index],style: kHeadingWhiteText,)),
              ),
            );
          })
        ],
      ),
    );
  }
}
