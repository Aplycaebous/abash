// import 'package:abash/saved_proterties.dart';
import 'package:flutter/material.dart';
import 'package:abash/constants.dart';
// import 'package:abash/saved_proterties.dart';

class BtnSaved extends StatefulWidget {
  const BtnSaved({super.key});

  @override
  State<BtnSaved> createState() => _BtnSavedState();
}

class _BtnSavedState extends State<BtnSaved> {
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        // print(getCurrentRoute(context));
        // Navigator.pushNamed('/savedproperties': (context) => SavedProperties());
      },
      icon: Column(
        children: [
          Image.asset(
            'assets/icons/icon_heart.ico',
            height: 24,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 0),
            child: Text(
              "Saved",
              style: TextStyle(color: textPrimary, height: 1.67, fontSize: 12,fontFamily: 'DMSans',fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
      label: const Text(''),
    );
  }
}