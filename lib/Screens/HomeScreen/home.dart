import 'package:flutter/material.dart';
import 'package:fodei/Screens/HomeScreen/bookingitem.dart';

import '../Account/BookingHistory.dart';
import 'HomeSccroll.dart';

class Home extends StatefulWidget {
  Home({super.key});
  static String id = 'Home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final tabs = [
    Center(child: HomeIcon()),
    // Center(child: BookinhItem()),
    Center(child: Account()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,

        unselectedItemColor: Color(0xff4B5563),
        selectedItemColor: Color(0xff32B768),
        // fixedColor : Color(0xff32B768),

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.event_note),
          //   label: 'Booking',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (Index) {
          setState(() {
            _currentIndex = Index;
          });
        },
      ),
    );
  }
}
