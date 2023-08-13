import 'package:abash/profile/user_profile_avatar.dart';
import 'package:abash/profile/verification_badge.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserInfoCard extends StatelessWidget {
  final Map<String, dynamic> userInfo;

  UserInfoCard({Key? key, required this.userInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: userInfo['verified']
          ? BoxConstraints(maxHeight: 120)
          : BoxConstraints(maxHeight: 150), // Set maximum height
      child: Padding(
        padding: EdgeInsets.all(
            MediaQuery.of(context).size.width * (16.0 / 360.0)), // Add padding of 16
        child: Stack(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                UserProfileAvatar(imageUrl: userInfo['profilePicture']),
                SizedBox(width: 15), // Add spacing between avatar and text
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (!userInfo['verified']) ...[
                      SizedBox(height: 20)
                    ],
                    Text(
                      userInfo['name'], // Replace with actual user's name
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(height: 10),
                    VerificationBadge(verified: userInfo['verified']),
                    if (!userInfo['verified']) ...[
                      SizedBox(height: 8),
                      Container(
                        constraints: BoxConstraints(maxWidth: 200),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                    "Without verification you cannot rent or add properties. ",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black, // Keep the text color black
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Verify now",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF0A8ED9), // Make the text blue
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        // Handle Verify now button click
                                      },
                                  ),
                                ],
                              ),
                            ),
                          ],

                        ),
                      ),
                    ],
                  ],
                ),
              ],
            ),
            Positioned(
              top: 20,
              right: 0,
              child: IconButton(
                onPressed: () {
                  // Handle edit button action here
                },
                icon: SvgPicture.asset(
                  "assets/icons/edit_square.svg",
                  // Replace with the actual path
                  width: 18,
                  height: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

