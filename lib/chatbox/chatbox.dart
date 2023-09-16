import 'package:abash/chatbox/chatbox-top-bar.dart';
import 'package:abash/chatbox/received-image.dart';
import 'package:abash/chatbox/received-message.dart';
import 'package:abash/chatbox/sent-image.dart';
import 'package:abash/chatbox/sent-messages.dart';
import 'package:abash/chatbox/timestamp.dart';
import 'package:flutter/material.dart';

class Chatbox extends StatelessWidget {
  const Chatbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: ChatBoxTopBar(),
        body: Column(
          children: <Widget>[
            // Scrollable space in the middle with background color
            Expanded(
              child: Container(
                color: const Color(0xFFF9F9F9), // Background color
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 20.0, bottom: 16.0),
                    // Add horizontal padding and bottom padding
                    child: Column(
                      children: <Widget>[
                        Timestamp(dateTime: DateTime.now()),
                        ReceivedMessage(
                            text: "Hello, I'm Khalid. Here are some pictures."),
                        const ReceivedImage(
                            imageUrl: "assets/images/chat image.png"),
                        SentMessage(text: "Show me other options"),
                        const SentImage(
                            imageUrl: "assets/images/chat image 2.png"),
                        ReceivedMessage(text: "That's all I can show"),
                        // Add more messages here if needed
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        // Fixed bottom app bar
        bottomNavigationBar: BottomAppBar(
          // Your bottom app bar content here
          child: Container(
            height: 60.0, // Adjust the height as needed
            color: Colors.blue, // Customize the color of your bottom app bar
          ),
        ),
      ),
    );
  }
}
