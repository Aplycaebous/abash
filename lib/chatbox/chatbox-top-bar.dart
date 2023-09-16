import 'dart:math';
import 'package:abash/chatbox/chat-user-info.dart';
import 'package:flutter/material.dart';
import 'chat-user-avatar.dart';

class ChatBoxTopBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final backButtonAndUserDetailsWidth =
        MediaQuery.of(context).size.width * 247 / 360;

    return Container(
      padding: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 0,
            blurRadius: 30,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        title: Container(
          constraints: BoxConstraints(maxWidth: backButtonAndUserDetailsWidth),
          child: Row(
            children: <Widget>[

              IconButton(
                onPressed: () {
                  // Go back
                },
                icon: const Icon(Icons.arrow_back),
                iconSize: MediaQuery.of(context).size.height * 24 / 800,

              ),
              SizedBox(
                width: min(
                      MediaQuery.of(context).size.height,
                      MediaQuery.of(context).size.width,
                    ) *
                    0.02,
              ),
              ChatUserAvatar(),
              SizedBox(
                width:
                    MediaQuery.of(context).size.width * (195 - 142 - 45) / 360,
              ),
              Expanded(
                child: ChatUserInfo(
                  isActive: true,
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () => {},
            iconSize: 20 / 800,
            icon: Image.network("assets/icons/chatbox_call_button.png"),
          ),
        ],
      ),
    );
  }
}
