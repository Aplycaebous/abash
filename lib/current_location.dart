import 'package:flutter/material.dart';
import 'package:abash/btn_add_location.dart';
import 'package:abash/constants.dart';
import 'package:abash/choose_location.dart';

class CurrentLocation extends StatefulWidget {
  const CurrentLocation({super.key});

  @override
  State<CurrentLocation> createState() => _CurrentLocationState();
}

class _CurrentLocationState extends State<CurrentLocation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 36,
      margin: const EdgeInsets.only(
        top: 40,
        bottom: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Column(
            children: [
              BtnAddLocation(),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 15,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      child: Row(
                        children: [
                          const Text(
                            'Current Location',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: 'DMSans',
                                fontSize: 14,
                                color: textSecondary,
                                fontWeight: FontWeight.w400),
                          ),
                          Image.asset(
                            'assets/icons/icon_arrow-down.ico',
                            scale: 1,
                          ),
                        ],
                      ),
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (ctx) => const ChooseLocation(),
                        );
                      },
                    ),
                    const Text(
                      'No addresses added yet',
                      // textAlign: TextAlign.left,
                      style: TextStyle(
                          color: textPrimary,
                          fontSize: 14,
                          fontFamily: 'DMSans',
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          const Column(
            children: [
              // BtnMenu(),
            ],
          ),
        ],
      ),
    );
  }
}
