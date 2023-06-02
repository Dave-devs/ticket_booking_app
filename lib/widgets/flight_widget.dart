import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';

import '../utils/app_styles.dart';

class FlightWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  const FlightWidget({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: AppLayout.getHeight(12.0),
          horizontal: AppLayout.getWidth(12.0)
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getWidth(10.0)),
          color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.black,),
          Gap(AppLayout.getWidth(10.0)),
          Text(text, style: Styles.textStyle,)
        ],
      ),
    );
  }
}
