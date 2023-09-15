import 'package:abash/chatbox/received-image.dart';
import 'package:abash/chatbox/received-message.dart';
import 'package:abash/chatbox/sent-messages.dart';
import 'package:flutter/material.dart';

class Chatbox extends StatelessWidget {
  const Chatbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chatbox'), // Replace with your title
      ),
      body: Column(
        children: <Widget>[
          // Space at the top
          SizedBox(height: 20.0),

          // Scrollable space in the middle with background color
          Expanded(
            child: Container(
              color: Color(0xFFF9F9F9), // Background color
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add horizontal padding
                  child: Column(
                    children: <Widget>[
                      ReceivedMessage(text: "I am doing fineI am doing fineI am doing fineI am doing fineI am doing fineI am doing fineI am doing fineI am doing finey"),
                      SentMessage(text: "Alright, talk to you later then!Alright, talk to you later then!Alright, talk to you later then!Alright, talk to you later then!Alright, talk to you later then!Alright, talk to you later then!Alright, talk to you later then!"),
                      ReceivedImage(imageUrl: "assets/images/high quality img.jpg"),
                      SentMessage(text: "Alright, talk to you later then!Alright, talk to you later then!Alright, talk to you later then!Alright, talk to you later then!Alright, talk to you later then!Alright, talk to you later then!Alright, talk to you later then!"),
                      SentMessage(text: "Alright"),

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
    );
  }
}
