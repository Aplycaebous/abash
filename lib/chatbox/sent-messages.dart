import 'package:flutter/material.dart';

class SentMessage extends StatelessWidget {
  final String text;

  SentMessage({required this.text});

  @override
  Widget build(BuildContext context) {
    // Define a maximum width for your sent message
    final double maxMessageWidth = MediaQuery.of(context).size.width * 0.75;

    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: maxMessageWidth, // Set the maximum width
        ),
        child: Container(
          padding: const EdgeInsets.all(16.0), // Adjust the padding here
          decoration: const BoxDecoration(
            color: Color(0xFF0A8ED9), // Background color
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  height: 1.5, // Set the line-height
                  letterSpacing: 0,
                  fontFamily: 'DM Sans',
                ),
                textAlign: TextAlign.left,
              ),
              // Add any additional content or widgets here if needed
            ],
          ),
        ),
      ),
    );
  }
}
