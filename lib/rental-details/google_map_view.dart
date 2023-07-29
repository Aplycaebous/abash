import 'package:abash/rental-details/property_image_box.dart';
import 'package:flutter/material.dart';

class GoogleMapView extends StatelessWidget {
  final String imageURL = "assets/images/sample map.jpeg";
  const GoogleMapView({super.key});

  void onViewLocationInMapClicked() {
    //empty click function for now
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16, bottom: 6),
      color: Colors.white60, // Set white background color
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click, // Change cursor to clickable
            child: GestureDetector(
              onTap: onViewLocationInMapClicked,
              child: const Padding(
                padding: EdgeInsets.only(top: 14),
                child: Text(
                  'View location in map',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:10, bottom: 16), // Set the desired padding value
            child: SizedBox(
              height: 180, // Set the desired fixed height for the box
              child: AspectRatio(
                aspectRatio:
                    16 / 5, // Set the aspect ratio of the image (e.g., 16:9)
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(8), // Set optional border radius
                  child: PropertyImageBox(imageUrl: imageURL),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
