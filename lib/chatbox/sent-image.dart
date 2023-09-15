import 'package:flutter/material.dart';
import 'package:abash/chatbox/full-screen-image-viewer.dart';

class SentImage extends StatelessWidget {
  final String imageUrl;
  final double maxWidthPercentage; // Define the maximum width as a percentage
  final double maxHeightPercentage;

  const SentImage({
    Key? key,
    required this.imageUrl,
    this.maxWidthPercentage = 0.7,
    this.maxHeightPercentage = 0.8, // Set the default maximum width as a percentage
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final maxWidth = screenWidth * maxWidthPercentage; // Calculate the maximum width
    final maxHeight = screenWidth * maxHeightPercentage;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FullScreenImageViewer(imageUrl: imageUrl),
          ),
        );
      },
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: const EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Display the image with maximum width
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: maxWidth, // Set the maximum width based on percentage
                      maxHeight: maxHeight,
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10.0),   // Top-left corner
                        topRight: Radius.circular(10.0),  // Top-right corner
                        bottomLeft: Radius.circular(10.0),// Bottom-left corner
                        bottomRight: Radius.circular(0.0),// Bottom-right corner
                      ),
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
