import 'package:flutter/material.dart';

class ChatBoxTopBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("231231"),
      leading: IconButton(
        onPressed: () => {
          //go back
        },
        icon: const Icon(Icons.arrow_back),
      ),
      backgroundColor: Colors.pink,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
