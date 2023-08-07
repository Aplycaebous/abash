import 'dart:async';
import 'package:abash/homepage.dart';
import 'package:flutter/material.dart';
import 'package:abash/menu_drawer.dart';
import 'package:abash/saved_proterties.dart';
import 'package:abash/item_model.dart';


int index = 0;

// List<Color> multicolors;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late StreamSubscription subscription;
  bool isDeviceConnected = false;
  bool isAlertSet = false;
  int _currentIndex = 0;

  final tabs = [
    const Homepage(),
    const Center(
      child: Text('Search'),
    ),
    SavedProperties('Saved Properties', Item.recommendation),
    const Center(
      child: Text('Search'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Color.fromRGBO(249, 249, 1, 0.976),
        backgroundColor: Color(0xFFF9F9F9),
        body: tabs[_currentIndex],
        endDrawer: const ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            bottomLeft: Radius.circular(20.0),
          ),
          child: MenuDrawer(),
        ),

        bottomNavigationBar: SizedBox(
          height: 72,
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            unselectedIconTheme: const IconThemeData(
              size: 24,
            ),
            selectedIconTheme: const IconThemeData(size: 30),
            backgroundColor: const Color(0xFFFFFFFF),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications_rounded,
                ),
                label: 'Notification',
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                ),
                label: 'Saved',
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_rounded,
                ),
                label: 'Profile',
                backgroundColor: Colors.blue,
              ),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
