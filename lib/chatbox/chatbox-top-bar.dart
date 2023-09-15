import 'dart:math';
import 'package:abash/chatbox/chat-user-avatar.dart';
import 'package:flutter/material.dart';

class ChatBoxTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenIconSize = MediaQuery.of(context).size.height * 20 / 800;
    final sizeBetweenBackButtonAndIcon = min(
          MediaQuery.of(context).size.height,
          MediaQuery.of(context).size.width,
        ) *
        0.02;

    final shadowColor = Color(0xB2B2B2); // Custom shadow color without opacity
    final userInfoAndBackButtonWidth =
        MediaQuery.of(context).size.width * 247 / 800;

    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: shadowColor.withOpacity(0.2), // Set opacity separately
            spreadRadius: 0,
            blurRadius: 30,
            offset: Offset(0, 10),
          )
        ],
      ),
      child: AppBar(
        title: SizedBox(
          width: userInfoAndBackButtonWidth,

          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  // Go back
                },
                icon: const Icon(Icons.arrow_back),
                iconSize: screenIconSize,
              ),
              SizedBox(width: sizeBetweenBackButtonAndIcon),
              ChatUserAvatar(),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
    );
  }
}
