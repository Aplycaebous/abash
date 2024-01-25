import 'package:flutter/material.dart';

class UserProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final double size;

  UserProfileAvatar({required this.imageUrl, this.size = 50.0});

  @override
  Widget build(BuildContext context) {
    final avatarSize = MediaQuery.of(context).size.height * (82.0 / 800.0);
    final borderWidth = MediaQuery.of(context).size.height * (2.50 / 800.0);

    return Container(
      width: avatarSize,
      height: avatarSize,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
        border: Border.all(color: Colors.white, width: borderWidth),
        borderRadius: BorderRadius.circular(avatarSize / 2),
      ),
      child: ClipOval(
        child: Stack(
          children: [
            Center(
              child: Icon(
                Icons.account_circle,
                size: size,
              ),
            ),
            Positioned.fill(
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                errorBuilder:
                    (BuildContext context, Object error, StackTrace? stackTrace) {
                  return Center(
                    child: Icon(
                      Icons.account_circle,
                      size: size,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
