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
      padding: const EdgeInsets.only(
          top: 30, bottom:6),
      color: Colors.white60, // Set white background color
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage("assets/images/image 8.png"),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    isOwner ? "Owner (You)" : "Owner",
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
          if (!isOwner)
            Container(
              padding:
                  const EdgeInsets.all(4), // Add padding around the IconButton
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
        ],
      ),
    );
  }
}
