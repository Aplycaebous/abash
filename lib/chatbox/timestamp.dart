import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Timestamp extends StatelessWidget {
  final DateTime dateTime;

  const Timestamp({
    Key? key,
    required this.dateTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Format the provided dateTime as "EEE, h:mm a" (e.g., Wed, 8:21 AM)
    final formattedTime = DateFormat('EEE, h:mm a').format(dateTime);

    return Padding(
      padding: EdgeInsets.only(top: 40.0, bottom: 18.0),
      child: Center(
        child: Text(
          formattedTime,
          style: const TextStyle(
            fontFamily: 'DM Sans',
            fontSize: 12,
            fontWeight: FontWeight.w500,
            letterSpacing: 0,
            height: 1.5, // Set the line-height
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}