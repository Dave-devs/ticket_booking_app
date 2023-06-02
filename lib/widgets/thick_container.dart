import 'package:flutter/material.dart';

/* This widget is a reusable widget used in Ticket View
screen in the Ticket Design placed before the Airplane
and after the Airplane.
*/
class ThickContainer extends StatelessWidget {
  final bool? isColor;
  const ThickContainer({Key? key, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2.5, color: isColor == null ? Colors.white: const Color(0xFF8ACCF7))
      ),
    );
  }
}
