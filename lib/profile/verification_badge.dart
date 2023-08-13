import 'package:flutter/material.dart';

class VerificationBadge extends StatelessWidget {
  final bool verified;

  VerificationBadge({this.verified = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * (21.0 / 800.0),
      width: MediaQuery.of(context).size.width * (90.0 / 360.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: verified ? Colors.green : Colors.grey,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              verified ? Icons.check : Icons.close,
              color: Colors.white,
              size: 12,
            ),
            SizedBox(width: 4),
            Text(
              verified ? 'Verified User' : 'Not Verified',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
