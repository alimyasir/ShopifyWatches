import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/constant.dart';

class CarProductScreen extends StatelessWidget {
  const CarProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category Products',style: kAppBarTitleStyle,),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 4.0,
              childAspectRatio: 0.7,
              crossAxisSpacing: 0.1,
              crossAxisCount: 2,
            ),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                primary: false,
                itemBuilder: (BuildContext ,context){
              return Container(
                margin: EdgeInsets.all(5.0),
                height: 150,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [

                    Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage('https://source.unsplash.com/random/300?3'),fit: BoxFit.cover),

                          color: kWhiteColor,
                        borderRadius: BorderRadius.circular(12)
                      ),
                    ),
                    10.height,
                    Text('Apple Watch',style: kSubHeadingText,),
                    Text(
                      // maxLines: 1,
                      "HeadPhones700Beats",style: kSecondaryGrayText.copyWith(fontSize: 12),),
                    Text("\$500",style: kSubHeadingText,),
                  ],
                ),
              );
            }
            ),
          ],
        ),
      ),
    );
  }
}
