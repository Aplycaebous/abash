import 'package:flutter/material.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({super.key});

  @override
  State<MenuDrawer> createState() => _MenuDrawer();
}

class _MenuDrawer extends State<MenuDrawer> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            color: const Color.fromRGBO(249, 249, 249, 1.0),
            padding: const EdgeInsets.only(top: 44, left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'Menu',
                      style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(82, 26),
                            backgroundColor: !isPressed
                                ? Colors.blue
                                : const Color.fromRGBO(127, 135, 147, 1),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              if (isPressed) {
                                isPressed = !isPressed;
                              }
                            });
                          },
                          child: const Text('English'),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(82, 26),
                          backgroundColor: isPressed
                              ? Colors.blue
                              : const Color.fromRGBO(127, 135, 147, 1.0),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            if (!isPressed) {
                              isPressed = !isPressed;
                            }
                          });
                        },
                        child: const Text('বাংলা'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  height: 36,
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      backgroundColor: const Color(0xFFFFFFFF),
                      side: BorderSide(
                        color: Colors.black.withOpacity(0.0),
                      ),
                    ),
                    icon: Image.asset('assets/images/discover_tune.png'),
                    label: const Row(
                      children: [
                        SizedBox(width: 8),
                        Text('Settings',
                            style: TextStyle(fontSize: 16, fontFamily: 'DMSans')),
                        SizedBox(width: 8),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  height: 36,
                  width:  MediaQuery.of(context).size.width / 1.5,
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      // backgroundColor: ,
                      side: BorderSide(
                        color: Colors.black.withOpacity(0.0),
                        width: 2.0,
                      ),
                    ),
                    icon: Image.asset('assets/images/quick_reference.png'),
                    label: const Row(
                      children: [
                        SizedBox(width: 8),
                        Text(
                          'Terms & Conditions',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontFamily: 'DMSans'),
                        ),
                        SizedBox(width: 8),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  height: 36,
                  width:  MediaQuery.of(context).size.width / 1.5,
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      // backgroundColor: ,
                      side: BorderSide(
                        color: Colors.black.withOpacity(0.0),
                        width: 2.0,
                      ),
                    ),
                    icon: Image.asset('assets/images/verified_user.png'),
                    label: const Row(
                      children: [
                        SizedBox(width: 8),
                        Text(
                          'Privacy Policy',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontFamily: 'DMSans'),
                        ),
                        SizedBox(width: 8),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  height: 36,
                  width:  MediaQuery.of(context).size.width / 1.75,
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      // backgroundColor: ,
                      side: BorderSide(
                        color: Colors.black.withOpacity(0.0),
                        width: 2.0,
                      ),
                    ),
                    icon: Image.asset('assets/images/logout.png'),
                    label: const Row(
                      children: [
                        SizedBox(width: 8),
                        Text(
                          'Logout',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontFamily: 'DMSans'),
                        ),
                        SizedBox(width: 8),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
