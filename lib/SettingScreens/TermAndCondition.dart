import 'package:flutter/material.dart';

import '../constant.dart';


class TermAndCondition extends StatelessWidget {
  const TermAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0,left: 20,right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Terms&Condition',
                style: kHeadingText,
              ),
              Center(
                child: Text(
                    '2.1 We may collect, store and use the following kinds of personal '
                        'information:information about your computer and about your visits to and use of this website'
                        ' (including your IP address, geographical location, browser type and version, operating system,'
                        ' referral source, length of visit, page views and website navigation paths);'
                        '(b) information that you provide when completing your profile on our website (including your name);'
                        '(c) information that you provide to us for the purpose of subscribing to our email notifications and/or '
                        'newsletters (including your name and email address);Before you disclose to us the personal '
                        'information of another person, you must obtain that person’s consent to both the disclosure'
                        ' and the processing of that personal information in accordance with this policy.',
                    style:
                    kSecondaryText.copyWith(color: Colors.grey.shade500)),
              ),
              10.height,
              Text(
                'Terms',
                style: kHeadingText,
              ),
              Center(
                child: Text(
                    '2.1 We may collect, store and use the following kinds of personal '
                        'information:information about your computer and about your visits to and use of this website'
                        ' (including your IP address, geographical location, browser type and version, operating system,'
                        ' referral source, length of visit, page views and website navigation paths);'
                        '(b) information that you provide when completing your profile on our website (including your name);'
                        '(c) information that you provide to us for the purpose of subscribing to our email notifications and/or '
                        'newsletters (including your name and email address);Before you disclose to us the personal '
                        'information of another person, you must obtain that person’s consent to both the disclosure'
                        ' and the processing of that personal information in accordance with this policy.',
                    style:
                    kSecondaryText.copyWith(color: Colors.grey.shade500)),
              ),
              10.height,
              Text(
                'Condition',
                style: kHeadingText,
              ),
              Center(
                child: Text(
                    '2.1 We may collect, store and use the following kinds of personal '
                        'information:information about your computer and about your visits to and use of this website'
                        ' (including your IP address, geographical location, browser type and version, operating system,'
                        ' referral source, length of visit, page views and website navigation paths);'
                        '(b) information that you provide when completing your profile on our website (including your name);'
                        '(c) information that you provide to us for the purpose of subscribing to our email notifications and/or '
                        'newsletters (including your name and email address);Before you disclose to us the personal '
                        'information of another person, you must obtain that person’s consent to both the disclosure'
                        ' and the processing of that personal information in accordance with this policy.',
                    style:
                    kSecondaryText.copyWith(color: Colors.grey.shade500)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
