import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/Widgets/ButtonWidgets.dart';
import 'package:untitled/constant.dart';

import 'CheckoutScreen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart",style: kAppBarTitleStyle,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListView.builder(
                physics: ScrollPhysics(),
                itemCount: 5,
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                return Container(
                  height: 217,
                  // margin: EdgeInsets.all(2.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    // color: kOrangeColor,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 145,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage('https://source.unsplash.com/random/300?6'),fit: BoxFit.cover),

                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 35),
                              child: ListTile(
                                trailing: CircleAvatar(
                                  backgroundColor: kWhiteColor,
                                  child: Icon(Icons.delete),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                height: 30,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: kWhiteColor,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Row(
                                  children: [
                                    10.width,
                                    Icon(Icons.remove,size: 18,),
                                    10.width,
                                    Text('1'),
                                    10.width,
                                    Icon(Icons.add,size: 18,)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                      ),
                      ListTile(
                        title: Text('Roller Watch',style: kHeadingText.copyWith(fontSize: 15),),
                        subtitle: Text("Vado Olera Watch",style: kSecondaryGrayText,),
                        trailing: Text('\$400.00',style: kHeadingText.copyWith(fontSize: 15),),
                      )
                    ],
                  ),
                );
              }),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                      borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total",style: kHeadingText.copyWith(fontSize: 16),),
                        Text("\$100",style: kSubHeadingText,)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: kPrimaryButton(btnText: "Proceed to Checkout",onTap: (){
        Get.to(()=>CheckoutScreen());
      }),
    );
  }
}
