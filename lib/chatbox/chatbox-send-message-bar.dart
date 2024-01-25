import 'dart:math';

import 'package:abash/chatbox/send-message-button.dart';
import 'package:abash/chatbox/send-message-field.dart';
import 'package:flutter/material.dart';

class ChatBoxSendMessageBar extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final heightOfBottomBar = MediaQuery.of(context).size.height * 70 / 800;
    final paddingBetweenComponents = min(10.0, heightOfBottomBar * .09);
    return BottomAppBar(
      padding: EdgeInsets.zero,
      child: Container(
        padding: EdgeInsets.all(paddingBetweenComponents),
        height: heightOfBottomBar,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Image.network("assets/icons/add_photo_alternate.png"),
              iconSize: 24,
            ),
            SendMessageTextField(
                paddingBetweenComponents: paddingBetweenComponents),
            SendMessageButton(),
          ],
        ),
      ),
    );
  }
}
