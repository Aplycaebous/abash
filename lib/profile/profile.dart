import 'package:abash/partials/navbar.dart';
import 'package:abash/profile/card_container.dart';
import 'package:abash/profile/menu.dart';
import 'package:abash/profile/nothings_here.dart';
import 'package:flutter/material.dart';

import 'button_panel.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<Map<String, dynamic>> addedPropertyData = [
    {
      "title": "Lakeview Apartments",
      "location": "Gulshan, Dhaka",
      "area": "1,800 Square Feet",
      "imageUrl": "assets/images/image 2.png",
      "bedrooms": 3,
      "bathrooms": 2,
      "floor": "8th floor",
      "rent": 45000
    },
    {
      "title": "Luxury Residence",
      "location": "Banani, Dhaka",
      "area": "2,500 Square Feet",
      "imageUrl": "assets/images/image 2.png",
      "bedrooms": 4,
      "bathrooms": 3,
      "floor": "5th floor",
      "rent": 60000
    },
    {
      "title": "Green Valley Homes",
      "location": "Uttara, Dhaka",
      "area": "1,600 Square Feet",
      "imageUrl": "assets/images/image 2.png",
      "bedrooms": 2,
      "bathrooms": 2,
      "floor": "3rd floor",
      "rent": 38000
    },
    {
      "title": "Riverside Residency",
      "location": "Mohakhali, Dhaka",
      "area": "2,200 Square Feet",
      "imageUrl": "assets/images/image 2.png",
      "bedrooms": 3,
      "bathrooms": 2,
      "floor": "6th floor",
      "rent": 52000
    },
    {
      "title": "Skyline Apartments",
      "location": "Dhanmondi, Dhaka",
      "area": "1,900 Square Feet",
      "imageUrl": "assets/images/image 2.png",
      "bedrooms": 3,
      "bathrooms": 2,
      "floor": "7th floor",
      "rent": 50000
    },
    {
      "title": "Riverfront Residences",
      "location": "Bashundhara, Dhaka",
      "area": "2,300 Square Feet",
      "imageUrl": "assets/images/image 2.png",
      "bedrooms": 3,
      "bathrooms": 2,
      "floor": "9th floor",
      "rent": 54000
    },
    {
      "title": "Greenwood Heights",
      "location": "Baridhara, Dhaka",
      "area": "2,100 Square Feet",
      "imageUrl": "assets/images/image 2.png",
      "bedrooms": 3,
      "bathrooms": 2,
      "floor": "4th floor",
      "rent": 48000
    },
    {
      "title": "Rosewood Apartments",
      "location": "Mirpur, Dhaka",
      "area": "1,700 Square Feet",
      "imageUrl": "assets/images/image 2.png",
      "bedrooms": 2,
      "bathrooms": 2,
      "floor": "2nd floor",
      "rent": 42000
    }
  ];


  List<Map<String, dynamic>> rentedPropertyData = [];

  bool _showAddedProperties = true;

  void _toggleProperties() {
    setState(() {
      _showAddedProperties = !_showAddedProperties;
    });
  }

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
          child: Text(
            "Profile",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "DM Sans",
              fontSize: 18.0,
            ),
          ),
        ),
      ),
      endDrawer: const Menu(),
      bottomNavigationBar: NavbarBottom(),
      body: Padding (
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
        children: [
          // Fixed height profile bar
          Container(
            height: 150,
            // Add the profile component
          ),
          ButtonPanel(
            onToggle: () {
              setState(() {
                _showAddedProperties = !_showAddedProperties;
              });
            },
            showAddedProperties: _showAddedProperties,
          ),
          // Vertically scrollable container
          // Vertically scrollable container or "Nothing here" component
          _showAddedProperties
              ? (addedPropertyData.isNotEmpty
                  ? CardContainer(
                      propertyData: addedPropertyData,
                      addedProperty: true,
                    )
                  : const NothingsHere())
              : (rentedPropertyData.isNotEmpty
                  ? CardContainer(
                      propertyData: rentedPropertyData,
                      addedProperty: false,
                    )
                  : const NothingsHere()),
        ],
      ), ),
    );
  }
}
