import 'package:flutter/material.dart';
import 'package:ticket_booking_app/screens/home_screen.dart';
import 'package:ticket_booking_app/screens/profile_screen.dart';
import 'package:ticket_booking_app/screens/search_screen.dart';
import 'package:ticket_booking_app/screens/ticket_screen.dart';

class BottomBarNav extends StatefulWidget {
  const BottomBarNav({Key? key}) : super(key: key);

  @override
  State<BottomBarNav> createState() => _BottomBarNavState();
}

class _BottomBarNavState extends State<BottomBarNav> {
  @override
  Widget build(BuildContext context) {
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
      selectedScreen = index;
    }

    return Scaffold(
      body: Center(
        child: screenList[selectedScreen],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: 'Hone'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              activeIcon: Icon(Icons.search),
              label: 'Search'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.airplane_ticket_outlined),
              activeIcon: Icon(Icons.airplane_ticket),
              label: 'Ticket'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              activeIcon: Icon(Icons.person),
              label: 'Setting'
          ),
        ],
        onTap: navigate,
        currentIndex: selectedScreen,
        elevation: 10.0,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526480),
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
      ),
    );
  }
}
