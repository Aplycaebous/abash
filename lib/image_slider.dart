import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget{
  const ImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    var title = 'Web Images';

    return LayoutBuilder(
      builder: (context, constraints) {
        double desiredHeight = constraints.maxHeight * 0.1; // 25% of screen width
        return AspectRatio(
          aspectRatio: 4/3, // To maintain the original aspect ratio of the image
          child: Image.network(
            'https://picsum.photos/250?image=9',
            fit: BoxFit.cover, // Crop and fit the image to cover the area
          ),
        );
      },
    );
  }
}