import 'package:flutter/material.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppTicketsTab extends StatelessWidget {
  final String firstTabText;
  final String secondTabText;
  const AppTicketsTab({Key? key, required this.firstTabText, required this.secondTabText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        child: Row(
          children: [
            //Container for 'Airline Ticket'.
            Container(
              width: size.width * 44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7.0)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50.0))),
                  color: Colors.white
              ),
              child: Center(child: Text(firstTabText, style: Styles.headLineStyle1,)),
            ),
            //Container for 'Hotels'.
            Container(
              width: size.width * 44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7.0)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50.0))),
                  color: Colors.transparent
              ),
              child: Center(child: Text(secondTabText)),
            )
          ],
        ),
      ),
    );
  }
}