import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class LayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final int dotSectionCount;
  final double width;
  //final double height;
  const LayoutBuilderWidget({Key? key, this.isColor, required this.dotSectionCount, this.width = 3.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Used layout builder so getSize could calculate available space within layout builder
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (kDebugMode) {
          print('The constraint is ${constraints.constrainWidth()}');
          //To print to logcat console
        }
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate((constraints.constrainWidth() / dotSectionCount).floor(), (index) => SizedBox(
            width: width,
            height: AppLayout.getHeight(1.0),
            child: DecoratedBox(
              decoration: BoxDecoration(
                //if color == null 'White color' Else 'Grey color'
                  color: isColor == null ? Colors.white : Colors.grey.shade300
              ),),
          )),
        );
      },
    );
  }
}
