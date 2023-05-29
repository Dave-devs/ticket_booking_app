import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class ViewAllWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  const ViewAllWidget({Key? key, required this.bigText, required this.smallText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
            bigText,
            style: Styles.headLineStyle2
        ),
        InkWell( //Clickable widget like gesture detector
            onTap: () {
              if (kDebugMode) {
                print('You tap me!');
              }
            },
            child: Text(
              smallText,
              style: Styles.textStyle.copyWith(color: Styles.primaryColor),
            )
        ),
      ],
    );
  }
}
