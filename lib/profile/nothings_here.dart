import 'package:flutter/material.dart';

class NothingsHere extends StatelessWidget {
  const NothingsHere({super.key});


  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Padding(
        padding: EdgeInsets.all(16.0), // Add desired padding here
        child: Column(
          mainAxisSize: MainAxisSize.min, // Set mainAxisSize to min
          children: [
            SizedBox(height: 100), // Add SizedBox with desired height
            ImageIcon(
              AssetImage('icons/nothings_here.png'), // Replace with your image path pattern
              color: Color(0xFF7F8793),
              size: 100,
            ),
            SizedBox(height: 10),
            Text("Nothings here", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
