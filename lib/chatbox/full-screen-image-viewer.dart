import 'package:flutter/material.dart';

class FullScreenImageViewer extends StatelessWidget {
  final String imageUrl;

  const FullScreenImageViewer({Key? key, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Display the image
          Center(
            child: Container(
              alignment: Alignment.center,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          // Display custom top bar with background color
          Positioned(
            top: 32.0,
            left: 0,
            right: 0,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Color(0xFFF9F9F9), // Background color
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFB2B2B2).withOpacity(0.2),
                    offset: Offset(0, 10),
                    blurRadius: 30.0,
                    spreadRadius: 0.0,
                  ),
                ],
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(8.0, 24.0, 8.0, 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    GestureDetector(
                      onTap: () {
                        // Your download function goes here
                        // For example, you can use a package like 'url_launcher' to open a download link.
                        // Make sure to import the package and use it as needed.
                      },
                      child: const ImageIcon(
                        AssetImage('icons/download.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

