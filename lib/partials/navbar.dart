import 'package:flutter/material.dart';


class NavbarBottom extends StatefulWidget {
  const NavbarBottom({super.key});

  @override
  _NavbarBottomState createState() => _NavbarBottomState();
}

class _NavbarBottomState extends State<NavbarBottom> {
  int _currentIndex = 0;

  // Define the pages or tabs you want to show in the bottom navigation bar

  @override
  Widget build(BuildContext context) {
    return  Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: kBottomNavigationBarHeight,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildNavItem(0, 'Home'),
                _buildNavItem(1, 'FAQ'),
                _buildNavItem(2, 'Favorites'),
                _buildNavItem(3, 'Profile'),
              ],
            ),
          ),
        ],
      );
  }

  Widget _buildNavItem(int index, String title) {
    bool isSelected = _currentIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ImageIcon(
            AssetImage('icons/${title.toLowerCase()}.png'), // Replace with your image path pattern
            color: isSelected ? Colors.blueAccent : Colors.black,
          ),
          Text(
            title,
            style: TextStyle(
              color: isSelected ? Colors.blueAccent : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
