import 'package:flutter/material.dart';

class PropertyImageBox extends StatelessWidget{
  const PropertyImageBox({super.key});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double desiredHeight = constraints.maxHeight * 0.25; // 25% of screen height
        return AspectRatio(
          aspectRatio: 4 / 3, // To maintain the original aspect ratio of the image
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0), // Adjust the radius as needed
            child: Image.network(
              'assets/images/image 7.png',
              fit: BoxFit.cover, // Crop and fit the image to cover the area
            ),
          ),
        );
      },


    );
  }
}