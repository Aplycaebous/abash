import 'package:flutter/material.dart';
import 'dart:math'; // Import the dart:math library

class ReceivedMessage extends StatelessWidget {
  final String text;

  ReceivedMessage({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    // Define a maximum width for your received message
    final double maxMessageWidth = MediaQuery.of(context).size.width * 0.8;

    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
        decoration: const BoxDecoration(
          color: Color(0xFFF2F4F5),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0),
          ),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            // Wrap the message text with a ConstrainedBox to limit its width
            return ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: min(maxMessageWidth, constraints.maxWidth),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  text,
                  style: const TextStyle(
                    fontFamily: 'DM Sans', // Set the font-family
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400, // Set the font-weight
                    height: 1.5, // Set the line-height
                    letterSpacing: 0.0, // Set the letter-spacing
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
