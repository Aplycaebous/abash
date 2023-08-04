import 'package:abash/profile/added_property_card.dart';
import 'package:abash/profile/rented_property_card.dart';
import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  final List<Map<String, dynamic>> propertyData;
  final bool addedProperty;
  const CardContainer({Key? key, required this.propertyData, required this.addedProperty})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: propertyData.length,
        itemBuilder: (context, index) {
          final property = propertyData[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0), // Add desired vertical padding here
            child: addedProperty
                ? AddedPropertyCard(propertyData: property)
                : RentedPropertyCard(propertyData: property),
          );
        },
      ),
    );
  }

}