import 'package:flutter/material.dart';

class ShowQuestion extends StatefulWidget {
  ShowQuestion(this.qus,this.ans,{super.key});

  String qus;
  String ans;

  @override
  State<ShowQuestion> createState() => _ShowHouseState();
}

class _ShowHouseState extends State<ShowQuestion> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return SizedBox(
      height: 39,
      width: mediaQuery.size.width,
      child: Row(
        children: [
          SizedBox(
            height: 24,
            width: 24,
            child: Image.asset(
              'assets/icons/Vector.png',
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10),
            height: 36,
            width: mediaQuery.size.width * .75,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.qus,
                  style: const TextStyle(
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.bold,
                      fontSize: 15.5),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  widget.ans,
                  style: const TextStyle(
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Color.fromARGB(255, 94, 91, 91)),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
