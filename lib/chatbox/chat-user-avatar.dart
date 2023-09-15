import 'package:flutter/material.dart';

class ChatUserAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage("assets/images/Khalid Hassan Chowdhury.png"),
      radius: MediaQuery.of(context).size.width*45/800,
    );
  }
}
