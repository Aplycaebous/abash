import 'package:flutter/material.dart';

class ChatUserAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              blurRadius: 40,
              color: Color(0xff1428520A),
              spreadRadius: 0,
            )
          ]
        ),
        child: CircleAvatar(
          backgroundImage:
              NetworkImage("assets/images/Khalid Hassan Chowdhury.png"),
          radius: MediaQuery.of(context).size.height * (45 / 2) / 800,
        ));
  }
}
