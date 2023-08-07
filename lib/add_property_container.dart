import 'package:flutter/material.dart';
import 'package:abash/constants.dart';

class AddPropertyContainer extends StatefulWidget {
  const AddPropertyContainer({super.key});

  @override
  State<AddPropertyContainer> createState() => _AddPropertyContainerState();
}

class _AddPropertyContainerState extends State<AddPropertyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: lightAsh.withOpacity(0.2),
            spreadRadius: 0,
            blurRadius: 30,
            offset: const Offset(0, 10), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              width: 198,
              //padding: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // flex: 3,
                  // flex: 1,
                  Container(
                    alignment: Alignment.topLeft,
                    // margin:
                    // const EdgeInsets.only(bottom: 20, left: 5, right: 80),
                    child: const Text(
                      'Looking to sell or rent out your property?',
                      style: TextStyle(
                          color: textPrimary,
                          fontSize: 16,
                          height: 1.3,
                          fontWeight: FontWeight.w500),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.only(top: 22),
                    width: MediaQuery.of(context).size.width / 3,
                    height: 37,
                    alignment: Alignment.centerLeft,
                    // margin: const EdgeInsets.only(right: 162),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: gradient,
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Add property',
                          style: TextStyle(
                              color: white,
                              fontSize: 15,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Image.asset('assets/images/house.png'),
        ],
      ),
    );
  }
}
