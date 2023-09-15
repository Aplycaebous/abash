import 'dart:math';

import 'package:abash/chatbox/chat-user-avatar.dart';
import 'package:flutter/material.dart';

class ChatBoxTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenIconSize = MediaQuery.sizeOf(context).height * 20 / 800;
    final sizeBetweenBackButtonAndIcon = min(MediaQuery.sizeOf(context).height,
            MediaQuery.sizeOf(context).width) *
        0.02;
    return AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              onPressed: () => {
                //go back
              },
              icon: const Icon(Icons.arrow_back),
              iconSize: screenIconSize,
            ),
            SizedBox(width: sizeBetweenBackButtonAndIcon),
            ChatUserAvatar(),
          ],
        ),
        backgroundColor: Colors.white,
        // shadowColor: Colors.black12,
        elevation: 0,
        scrolledUnderElevation: 0);
  }
}
