import 'package:flutter/material.dart';
import 'package:abash/chatbox/full-screen-image-viewer.dart';

class ReceivedImage extends StatelessWidget {
  final String imageUrl;
  final double maxWidthPercentage; // Define the maximum width as a percentage
  final double maxHeightPercentage;

  const ReceivedImage({
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
        alignment: Alignment.centerLeft,
        child: Container(
          margin: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Display the image with maximum width
              Container(
                constraints: BoxConstraints(
                  maxWidth: maxWidth, // Set the maximum width based on percentage
                  maxHeight: maxHeight,
                ),
                child: ClipRRect( // Clip the image to round the corners
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                  ),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // Share button (vertically aligned)
              // Expanded(
              //   child: Align(
              //     alignment: Alignment.centerLeft,
              //     child: InkWell(
              //       onTap: () {
              //         // Handle the share action here
              //         // You can show a share dialog or perform any other action
              //         // when the share button is tapped.
              //       },
              //       child: const ImageIcon(
              //         AssetImage('icons/share.png'), // Replace with your image path pattern
              //         color: Color(0xFF7F8793),
              //         size: 40,
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
