import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/constant.dart';

import 'ProductScreen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('New Collection',style: kAppBarTitleStyle,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: ListView.builder(
                itemCount: 20,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.all(5),
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kWhiteColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 35,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey
                            ),
                            child: Icon(Icons.border_all)),
                        Text('All',style: kSubHeadingText,)
                      ],
                    ),

              );}),
            ),
        10.height,
        Expanded(
          child: GridView.custom(
            gridDelegate: SliverStairedGridDelegate(
              crossAxisSpacing: 2.0,
              mainAxisSpacing: 2.0,
              startCrossAxisDirectionReversed: true,
              pattern: [
                StairedGridTile(0.5, 1),
                // StairedGridTile(0.5, 4),
                StairedGridTile(0.5, 3 / 3.2),
                // StairedGridTile(1.0, 10 / 4),
              ],
            ),
            childrenDelegate: SliverChildBuilderDelegate(
                  (context, index) => GestureDetector(
                    onTap: (){
                      Get.to(()=>ProductScreen());
                    },
                    child: Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(12),
                     ),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: NetworkImage('https://source.unsplash.com/random/300?5'),fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(12),
                              color: Colors.grey
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(Icons.favorite_border_rounded),
                                ],
                              ),
                            ),
                          ),
                          ListTile(
                            title: Text('\$25.00',style: kSubHeadingText,),
                            subtitle: Text(
                              maxLines: 2,
                                'Girls Watch',style: kSecondaryGrayText,),

                          ),

                        ],
                      ),
                    ),
                  ),
            ),
          ),
        ),
          ],
        ),
      ),

    );
  }
}
