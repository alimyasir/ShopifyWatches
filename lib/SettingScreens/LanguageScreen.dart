import 'package:flutter/material.dart';

import '../constant.dart';

class LanguageScreen extends StatefulWidget {
  LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  List<String> options = [
    'United States',
    'Canada',
    'United Kingdom',
    'Australia',
    'Germany',
    'France',
    'Japan',
    'China',
    'Brazil',
    'India',
    'South Korea',
    'Italy',
    'Mexico',
    'Russia',
    'Spain',
    'Netherlands',
    'Turkey',
    'Saudi Arabia',
    'South Africa',
    'Singapore',
  ];
  String currentOption = 'United States'; // Default selected option

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Country Selection',style: kAppBarTitleStyle,),
      ),
      body: ListView.builder(
        itemCount: options.length,
        itemBuilder: (context, index) {
          final option = options[index];
          return ListTile(
            title: Text(option,style: kHeadingText.copyWith(fontSize: 15),),
            leading: Radio(
              activeColor: kTealColor,
              value: option,
              groupValue: currentOption,
              onChanged: (value) {
                setState(() {
                  currentOption = value.toString();
                });
              },
            ),
            trailing: Icon(Icons.chevron_right),
          );
        },
      ),
    );
  }
}


