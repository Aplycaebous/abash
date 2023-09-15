import 'package:flutter/material.dart';

class SentMessage extends StatelessWidget {
  final String text;

  SentMessage({required this.text});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.75,
        margin: const EdgeInsets.only(bottom: 5, right: 10, top: 5),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 0,
                  fontFamily: 'DM Sans',
                ),
              ),
              SizedBox(height: 10),
              // Add any additional content or widgets here if needed
            ],
          ),
        ),
      ),
    );
  }
}
