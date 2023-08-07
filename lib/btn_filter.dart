import 'package:flutter/material.dart';
import 'package:abash/constants.dart';

class BtnFilter extends StatefulWidget {
  const BtnFilter({super.key});

  @override
  State<BtnFilter> createState() => _BtnFilterState();
}

class _BtnFilterState extends State<BtnFilter> {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: backgroundWhite,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            spreadRadius: 2,
            blurRadius: 12,
            offset: const Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: Center(
        child: TextButton(
          onPressed: () {
          },
          child: Image.asset(
            'assets/icons/icon_filter.ico',
            scale: 0.5,
          ),
        ),
      ),
    );
  }
}
