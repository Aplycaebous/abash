import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SendMessageButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Container(
          height: 44,
          width: 44,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff5FB4E5), Color(0xff0A8ED9)],
              ),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Image.network(
            "assets/icons/send_message.png",
            height: MediaQuery.of(context).size.width * 24 / 800,
            width: MediaQuery.of(context).size.width * 24 / 800,
            color: Colors.white,
          ),
        ));
  }
}
