import 'package:abash/chatbox/chat-user-avatar.dart';
import 'package:flutter/material.dart';

class ChatBoxTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: null,
      title: Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        IconButton(
          onPressed: () => {
            //go back
          },
          icon: const Icon(Icons.arrow_back),
          iconSize: 20,
        ),
        SizedBox(width: 36-20),
        ChatUserAvatar(),
      ]),
      backgroundColor: Colors.pink,
    );
  }
}
