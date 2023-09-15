import 'package:flutter/material.dart';

class ReceivedMessage extends StatelessWidget {
  final String text;

  ReceivedMessage({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8, // Adjust the percentage as needed
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        decoration: const BoxDecoration(
          color: Color(0xFFF2F4F5),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.0),
            bottomRight: Radius.circular(0.0),
            bottomLeft: Radius.circular(10.0),
          ),
        ),
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
  }
}
