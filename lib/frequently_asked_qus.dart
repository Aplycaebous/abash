import 'package:flutter/material.dart';
import 'package:abash/show_question.dart';

class FAQ extends StatefulWidget {
  const FAQ({super.key});

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Container(
      // height: 197,
      margin: const EdgeInsets.only(top: 10),
      width: mediaQuery.size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            height: 21,
            width: mediaQuery.size.width,
            child: const Text(
              'Frequently Asked Questions',
              style: TextStyle(
                height: 1.301875,
                fontSize: 18,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShowQuestion(
                  'Wow do I use this app???????????????????????????????????????????????????????????????????????????????????????????????????????????????',
                  'To use the app, insert general instructions.'),
              const SizedBox(
                height: 18,
              ),
              ShowQuestion(
                  'How do I use this app???????????????????????????????????????????????????????????????????????????????????????????????????????????????',
                  'To use the app, insert general instructions.'),
              const SizedBox(
                height: 18,
              ),
              ShowQuestion(
                  'Dow do I use this app???????????????????????????????????????????????????????????????????????????????????????????????????????????????',
                  'To use the app, insert general instructions.'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 99,
                height: 34,
                margin: const EdgeInsets.only(top: 20, bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadiusDirectional.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFFB2B2B2).withOpacity(0.2),
                      spreadRadius: 0,
                      blurRadius: 30,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ), // changes position of shadow),],
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "See More",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'DM Sans',
                      fontSize: 14,
                      height: 1.3,
                      color: Color(0xFF0A8ED9),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
