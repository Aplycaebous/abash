import 'package:abash/rental-details/property_image_box.dart';
import 'package:abash/rental-details/property_mini_slider_image.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class PropertyImageSlider extends StatefulWidget {
  final List<String> imageUrls;

  const PropertyImageSlider({Key? key, required this.imageUrls})
      : super(key: key);

  @override
  _PropertyImageSliderState createState() => _PropertyImageSliderState();
}

class _PropertyImageSliderState extends State<PropertyImageSlider> {
  String currentImageUrl = "assets/images/image 7.png";
  int selectedImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PropertyImageBox(imageUrl: currentImageUrl),
        const SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widget.imageUrls.asMap().entries.map((entry) {
              final int index = entry.key;
              final String imageUrl = entry.value;

              return GestureDetector(
                onTap: () {
                  setState(() {
                    currentImageUrl = imageUrl;
                    selectedImageIndex = index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: selectedImageIndex == index
                          ? const GradientBoxBorder(
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF5FB4E5),
                                    Color(0xFF0A8ED9)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                              width: 3.0,
                            )
                          : Border.all(color: Colors.transparent, width: 2.0),
                      borderRadius: BorderRadius.circular(23.0),
                    ),
                    child: PropertySliderImageBox(imageUrl: imageUrl),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
