import 'package:abash/topbar.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

//
// void main() {
//   runApp(const RentalDetails());
// }

void main() {


  runApp(DevicePreview(
    enabled: true,
    builder: (context) => const RentalDetails(),
  ));
}