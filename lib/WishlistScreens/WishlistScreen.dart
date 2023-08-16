import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../CartScreens/CheckoutScreen.dart';
import '../Widgets/ButtonWidgets.dart';
import '../constant.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Wishlist",
          style: kAppBarTitleStyle,
        ),
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
                  itemBuilder: (context, index) {
                    return Dismissible(
                      onDismissed: (DismissDirection direction) {
                        log('Dismissed with direction \$direction');
                      },
                      confirmDismiss: (DismissDirection direction) async {
                        final confirmed = await showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text('Are you sure want to delete?'),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context, false);
                                      },
                                      child: Text('NO')),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context, true);
                                      },
                                      child: Text('Yes')),
                                ],
                              );
                            });
                        log("Deletion confirmed: $confirmed");
                        return confirmed;
                      },
                      key: UniqueKey(),
                      direction: DismissDirection.endToStart,
                      background: Padding(
                        padding: const EdgeInsets.only(top: 60.0, right: 10),
                        child: ListTile(
                          trailing: Icon(
                            Icons.delete,
                            color: kRedColor,
                          ),
                        ),
                      ),
                      child: Container(
                        height: 217,
                        // margin: EdgeInsets.all(2.0),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          // color: kOrangeColor,
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          children: [
                            Container(
                              height: 145,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://source.unsplash.com/random/300?1'),
                                    fit: BoxFit.cover),
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
                                        child: Icon(
                                          Icons.favorite,
                                          color: kRedColor,
                                        ),
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
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      // child: Row(
                                      //   children: [
                                      //     10.width,
                                      //     Icon(Icons.remove,size: 18,),
                                      //     10.width,
                                      //     Text('1'),
                                      //     10.width,
                                      //     Icon(Icons.add,size: 18,)
                                      //   ],
                                      // ),
                                      child: Center(
                                          child: Text(
                                        'Add To Cart',
                                        style: kSubHeadingText.copyWith(
                                            fontSize: 12),
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ListTile(
                              title: Text(
                                'Roller Watch',
                                style: kHeadingText.copyWith(fontSize: 15),
                              ),
                              subtitle: Text(
                                "Vado Olera Watch",
                                style: kSecondaryGrayText,
                              ),
                              trailing: Text(
                                '\$400.00',
                                style: kHeadingText.copyWith(fontSize: 15),
                              ),
                            )
                          ],
                        ),
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
                        Text(
                          "Total",
                          style: kHeadingText.copyWith(fontSize: 16),
                        ),
                        Text(
                          "\$100",
                          style: kSubHeadingText,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: kPrimaryButton(btnText: "Proceed to Checkout",onTap: (){
      //   Get.to(()=>CheckoutScreen());
      // }),
    );
  }
}
