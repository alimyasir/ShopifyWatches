import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/constant.dart';

import 'CatProductScreen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
      ),
      body: Column(
        children: [
          ListView.builder(
            itemCount: 3,
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
                  color: kOrangeColor,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Boys",style: kHeadingText,),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.circular(12)
                      ),
                    )
                  ],
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}
