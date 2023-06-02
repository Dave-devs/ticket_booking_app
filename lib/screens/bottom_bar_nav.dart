import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_app/screens/home_screen.dart';
import 'package:ticket_booking_app/screens/profile_screen.dart';
import 'package:ticket_booking_app/screens/search_screen.dart';
import 'package:ticket_booking_app/screens/ticket_screen.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';

class BottomBarNav extends StatefulWidget {
  const BottomBarNav({Key? key}) : super(key: key);

  @override
  State<BottomBarNav> createState() => _BottomBarNavState();
}

class _BottomBarNavState extends State<BottomBarNav> {
  //List of available screens in app for navigation
  final List<Widget> screenList = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];
  //Index tracker
  int selectedScreen = 0;
  //Function to navigate
  void navigate(int index) {
    setState(() {
      selectedScreen = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: screenList[selectedScreen],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: 'Search'
          ),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_airplane_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_airplane_filled),
              label: 'Ticket'
          ),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: 'Setting'
          ),
        ],
        onTap: navigate,
        currentIndex: selectedScreen,
        elevation: 10.0,
        selectedItemColor: Styles.selectedItemColor,
        unselectedItemColor: Styles.unselectedItemColor,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
      ),
    );
  }
}
