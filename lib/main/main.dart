import 'package:flutter/material.dart';
import 'package:ticket_booking_app/screens/bottom_bar_nav.dart';

import '../utils/app_styles.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Styles.primaryColor,
      ),
      home: const BottomBarNav(),
    );
  }
}
