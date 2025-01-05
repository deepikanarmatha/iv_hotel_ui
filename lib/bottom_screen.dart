import 'package:flutter/material.dart';

import 'assets/settings.dart';
import 'home_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  // List of pages to display based on the selected tab
  final List<Widget> _pages = [
    HOTEL_LIST_VIEW(),
    const Center(child: Text('Car Booking')),
    const Center(child: Text('Car Washing')),
    const Center(child: Text('My Profile')),
    Settings(),
  ];

  // Function to update the selected index
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pages[_selectedIndex], // Show the selected page
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.greenAccent], // Gradient colors
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped, // Handle tap event
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white, // Selected item color
          unselectedItemColor: Colors.black, // Unselected item color
          backgroundColor: Colors.transparent, // Transparent background
          items: [
            BottomNavigationBarItem(
              icon: ColorFiltered(
                colorFilter: ColorFilter.mode(
                    _selectedIndex == 0 ? Colors.white : Colors.black,
                    BlendMode.srcIn),
                child: Image.asset(
                  'lib/assets/images/rooms.png',
                  width: 24,
                  height: 24,
                ),
              ),
              label: 'Rooms',
            ),
            BottomNavigationBarItem(
              icon: ColorFiltered(
                colorFilter: ColorFilter.mode(
                    _selectedIndex == 1 ? Colors.white : Colors.black,
                    BlendMode.srcIn),
                child: Image.asset(
                  'lib/assets/images/car_booking.png',
                  width: 24,
                  height: 24,
                ),
              ),
              label: 'Car booking',
            ),
            BottomNavigationBarItem(
              icon: ColorFiltered(
                colorFilter: ColorFilter.mode(
                    _selectedIndex == 2 ? Colors.white : Colors.black,
                    BlendMode.srcIn),
                child: Image.asset(
                  'lib/assets/images/car_washing.png',
                  width: 24,
                  height: 24,
                ),
              ),
              label: 'Car washing',
            ),
            BottomNavigationBarItem(
              icon: ColorFiltered(
                colorFilter: ColorFilter.mode(
                    _selectedIndex == 3 ? Colors.white : Colors.black,
                    BlendMode.srcIn),
                child: Image.asset(
                  'lib/assets/images/profile.png',
                  width: 24,
                  height: 24,
                ),
              ),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: ColorFiltered(
                colorFilter: ColorFilter.mode(
                    _selectedIndex == 4 ? Colors.white : Colors.black,
                    BlendMode.srcIn),
                child: Image.asset(
                  'lib/assets/images/settings.png',
                  width: 24,
                  height: 24,
                ),
              ),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
