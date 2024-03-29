//import 'package:abash/rental-details/rental_details_owner.dart';
 import 'package:abash/profile/profile.dart';
import 'package:abash/rental-details/rental_details_customer.dart';
import 'package:abash/chatbox/chatbox.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:google_fonts/google_fonts.dart';

//
// void main() {
//   runApp(const Root());
// }

void main() {
  //
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => const Root(),
  ));
}

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Details Page',
      theme: ThemeData(
        textTheme: GoogleFonts.dmSansTextTheme(), // Apply DM Sans to the text theme
        useMaterial3: true,
      ),
      home: const Chatbox(),
    );
  }
}