import 'package:abash/property_mini_slider_image.dart';
import 'package:flutter/material.dart';

class PropertyImageSlider extends StatelessWidget {
  final List<String> imageUrls;

  const PropertyImageSlider({Key? key, required this.imageUrls}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal, // Scroll images horizontally
      itemCount: imageUrls.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: PropertySliderImageBox(imageUrl: imageUrls[index]),
        );
      },
    );
  }
}
