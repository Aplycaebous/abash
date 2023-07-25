import 'package:flutter/material.dart';

class OwnerInfo extends StatelessWidget {
  String userName;
  bool isOwner;
  VoidCallback onCallPressed;

  OwnerInfo({
    Key? key,
    required this.userName,
    required this.isOwner,
    required this.onCallPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
        decoration: BoxDecoration(
          color: Colors.white, // Set white background color
        ),
        child: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage("assets/images/image 7.png"),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    isOwner ? "Owner (You)" : "Owner",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            if (!isOwner)
              Container(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: Container(
                  padding: EdgeInsets.all(4), // Add padding around the IconButton
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    gradient: const LinearGradient(
                      colors: [Color(0xFF5FB4E5), Color(0xFF0A8ED9)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      stops: [0.0, 1.0],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFFB2B2B2).withOpacity(0.33),
                        offset: const Offset(0, 10),
                        blurRadius: 30,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.call_outlined),
                    onPressed: onCallPressed,
                    color: Colors.white,
                  ),
                ),
              ),
          ],
        ));
  }
}
