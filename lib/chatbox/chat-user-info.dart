import 'package:flutter/material.dart';

class ChatUserInfo extends StatelessWidget {
  final bool isActive; // Boolean flag to determine if the user is active

  ChatUserInfo({required this.isActive});

  @override
  Widget build(BuildContext context) {
    final userInfoWidth = MediaQuery.of(context).size.width * 142 / 360;
    final userNameFontSize = 14.0;
    final userStatusFontSize = 12.0;
    return Container(
      width: userInfoWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Adjust as needed
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            "Khalid Hassan Chowdhury",
            style: TextStyle(
              fontSize: userNameFontSize,
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.w600, // Prevents overflow
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 4.0, // Adjust the size of the dot
                backgroundColor: (isActive ? Color(0xff7DDE86) : Colors.grey),
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.01),
              Text(
                isActive ? "Active now" : "Not Available",
                style: TextStyle(fontSize: 12,
                color: Color(0xff7F8793)),
              )
            ],
          )
        ],
      ),
    );
  }
}
