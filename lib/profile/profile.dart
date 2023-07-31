import 'package:abash/partials/navbar.dart';
import 'package:abash/profile/card_container.dart';
import 'package:abash/profile/menu.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);

  List<Map<String, dynamic>> addedPropertyData = [
    {
      "title": "Khan Paradise",
      "location": "Dhanmondi, Dhaka",
      "area": "2,100 Square Feet",
      "imageUrl" : "assets/images/image 2.png",
      "bedrooms": 2,
      "bathrooms": 2,
      "floor": "4th floor",
      "rent": 32000
    },
    {
      "title": "Lakeview Apartments",
      "location": "Gulshan, Dhaka",
      "area": "1,800 Square Feet",
      "imageUrl" : "assets/images/image 2.png",
      "bedrooms": 3,
      "bathrooms": 2,
      "floor": "8th floor",
      "rent": 45000
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0x00f9f9f9),
        leading: const IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: null,
        ),
        title: const Center(
            child: Text("Profile",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "DM Sans",
                    fontSize: 18.0))),
      ),
      endDrawer: const Menu(),
      bottomNavigationBar: NavbarBottom(),
      body: Column(
        children: [
          // Fixed height profile bar
          Container(
            height: 150,
            // Add the profile component
          ),

          // Vertically scrollable container
          // Vertically scrollable container or "Nothing here" component
          addedPropertyData.isNotEmpty
              ? CardContainer(propertyData: addedPropertyData, addedProperty: false,)
              : const Expanded(
                  child: SizedBox(
                    height:
                        100,
                    child: Column(
                      children: [
                        Icon(Icons.block, size: 48),
                        SizedBox(height: 15),
                        Text("Nothings here"),
                      ],
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
