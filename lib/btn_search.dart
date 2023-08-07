import 'package:flutter/material.dart';

class BtnSearch extends StatefulWidget {
  const BtnSearch({super.key});

  @override
  State<BtnSearch> createState() => _BtnSearchState();
}

class _BtnSearchState extends State<BtnSearch> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:35,
      height:35,
      child: Center(
        child: TextButton(
          //style: ButtonStyle(fixedSize:MaterialStateProperty.all(Size(30, 30)) ),
          onPressed: () {},
          child:
              Image.asset(
                'assets/icons/icon_search.ico',
                scale:0.7
              ),  

        ),
      ),
    );
  }
}