import 'package:access_app_clone/screens/profile_screen.dart';
import 'package:access_app_clone/screens/scan_screen.dart';
import 'package:access_app_clone/screens/support_screen.dart';
import 'package:flutter/material.dart';
import 'package:access_app_clone/screens/home_screen.dart';
import 'package:access_app_clone/screens/menu_screen.dart';

class HomeBottomNav extends StatefulWidget {
  const HomeBottomNav({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeBottomNav> createState() => _HomeBottomNavState();
}

class _HomeBottomNavState extends State<HomeBottomNav> {

  final List<Widget> _screens = [
    const HomeScreen(),
    const MenuScreen(),
    const ScanScreen(),
    const SupportScreen(),
    const ProfileScreen(),
  ];

  int _selectedPageIndex = 0;

  // void _selectPage(int index) {
  //   setState(() {
  //     _selectedPageIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        onTap: (value) => setState(() {
          _selectedPageIndex = value;
        }),
        type: BottomNavigationBarType.fixed,
        iconSize: 22,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card_outlined), label: 'Menu'),
          BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_2_outlined), label: 'Scan'),
          BottomNavigationBarItem(
              icon: Icon(Icons.headset_mic_outlined), label: 'Support'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
    );
  }
}
