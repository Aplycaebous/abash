//import 'package:abash/rental-details/rental_details_owner.dart';
 import 'package:abash/profile/profile.dart';
import 'package:abash/rental-details/rental_details_customer.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Details Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const Profile(),
    );
  }
}