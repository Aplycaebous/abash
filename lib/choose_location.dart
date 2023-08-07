import 'package:abash/constants.dart';
import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() {
    return _ChooseLocationState();
  }
}

class _ChooseLocationState extends State<ChooseLocation> {
  Future openDialog() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Center(
              child: Text('Delete address?',
                  style: TextStyle(fontFamily: 'DMSans', fontSize: 14))),
          content: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // fixedSize: const Size(82, 26),
                    backgroundColor: Colors.blue,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Yes'),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // fixedSize: const Size(82, 26),
                    backgroundColor: const Color.fromRGBO(127, 135, 147, 1.0),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('No'),
                ),
              ),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Card(
                  margin: const EdgeInsets.all(16.0),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'Home',
                              style: TextStyle(
                                fontFamily: 'DMSans',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: textPrimary,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              'House 12, Road 18',
                              style: TextStyle(
                                fontFamily: 'DMSans',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: textSecondary,
                              ),
                            ),
                            Text(
                              'Uttara, Dhaka',
                              style: TextStyle(
                                fontFamily: 'DMSans',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: textSecondary,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            InkWell(
                              child: Image.asset('assets/icons/edit.png'),
                              onTap: () {},
                            ),
                            const SizedBox(height: 8,),
                            InkWell(
                              child: Image.asset('assets/icons/delete.png'),
                              onTap: () {
                                Navigator.pop(context);
                                openDialog();
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.all(16.0),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'Office',
                              style: TextStyle(
                                fontFamily: 'DMSans',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: textPrimary,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              'House 5, Road 22',
                              style: TextStyle(
                                fontFamily: 'DMSans',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: textSecondary,
                              ),
                            ),
                            Text(
                              'Uttara, Dhaka',
                              style: TextStyle(
                                fontFamily: 'DMSans',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: textSecondary,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            InkWell(
                              child: Image.asset('assets/icons/edit.png'),
                              onTap: () {},
                            ),
                            // const Spacer(),
                            const SizedBox(height: 8,),
                            InkWell(
                              child: Image.asset('assets/icons/delete.png'),
                              onTap: () {
                                Navigator.pop(context);
                                openDialog();
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 100,),
                const Spacer(),
                Container(
                  width: 400,
                  height: 45,
                  // color: Colors.white,
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Add a new address',
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.4,
                        color: Colors.blue,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
