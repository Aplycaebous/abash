import 'package:abash/profile/user_profile_avatar.dart';
import 'package:abash/profile/verification_badge.dart';
import 'package:flutter/material.dart';

class UserInfoCard extends StatelessWidget {
  final Map<String, dynamic> userInfo;

  const UserInfoCard({Key? key, required this.userInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 150), // Set maximum height
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            UserProfileAvatar(imageUrl: userInfo['profilePicture']),
            SizedBox(width: 10), // Add spacing between avatar and text
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userInfo['name'], // Replace with actual user's name
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 3),
                VerificationBadge(verified: userInfo['verified']),
                // Text(
                //   (userInfo['verified']==false?"Without verification you cannot rent or add properties. Verify now": ""),
                //   style: TextStyle(
                //     fontSize: 10,
                //   ),
                // ),
                // Add more text widgets as needed (e.g., user bio)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
