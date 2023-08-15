import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Widgets/ButtonWidgets.dart';
import 'package:untitled/constant.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkouts",style: kAppBarTitleStyle,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Delivery Adress',style: kHeadingText,),
              Card(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: kWhiteColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Street:",style: kHeadingText.copyWith(fontSize: 16),),
                            Text(" 3512 Pearl Street",style: kSecondaryGrayText,),
                          ],
                        ),
                        5.height,
                        Row(
                          children: [
                            Text("City:",style: kHeadingText.copyWith(fontSize: 16),),
                            Text(" Muridke",style: kSecondaryGrayText,),
                          ],
                        ),
                        5.height,
                        Row(
                          children: [
                            Text("State/pronince/area:",style: kHeadingText.copyWith(fontSize: 16),),
                            Text(" Muridke",style: kSecondaryGrayText,),
                          ],
                        ),
                        5.height,
                        Row(
                          children: [
                            Text("Phone No:",style: kHeadingText.copyWith(fontSize: 16),),
                            Text(" 3059644526",style: kSecondaryGrayText,),
                          ],
                        ),
                        5.height,
                        Row(
                          children: [
                            Text("Zip Code:",style: kHeadingText.copyWith(fontSize: 16),),
                            Text(" 351200",style: kSecondaryGrayText,),
                          ],
                        ),
                        5.height,
                        Row(
                          children: [
                            Text("Country Calling Code:",style: kHeadingText.copyWith(fontSize: 16),),
                            Text(" +92",style: kSecondaryGrayText,),
                          ],
                        ),
                        5.height,
                        Row(children:[
                            Text("Country:",style: kHeadingText.copyWith(fontSize: 16),),
                            Text(" Pakistan",style: kSecondaryGrayText,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Text('Product Items',style: kHeadingText,),
              ListView.builder(
                itemCount: 2,
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                return Card(
                  child: Container(
                    margin: EdgeInsets.all(5),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Container(
                            height: 90,
                            width: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: NetworkImage('https://source.unsplash.com/random/300?5'),fit: BoxFit.cover),

                                borderRadius: BorderRadius.circular(12),
                              color: kWhiteColor
                            ),
                          ),
                          title: Text('Roller Watch',style: kHeadingText.copyWith(fontSize: 15),),
                          subtitle: Text('Vado Olera Watch',style: kSecondaryGrayText,),
                          trailing: Text('\$400.00',style: kHeadingText.copyWith(fontSize: 15),),
                        ),

                      ],
                    ),
                  ),
                );
              }),
              Text('Promo Code',style: kHeadingText,),
              Card(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    title: Text('Add Promo Code',style: kHeadingText.copyWith(fontSize: 15),),
                    subtitle: Text('#bkt2299',style: kSecondaryGrayText,),
                    leading: Container(
                      height: 120,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: kRedColor,

                      ),
                    ),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total",style: kHeadingText.copyWith(fontSize: 16),),
                    Text("\$800",style: kHeadingText.copyWith(fontSize: 16),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: kPrimaryButton(btnText: 'Place Order'),
    );
  }
}
