import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SendMessageTextField extends StatelessWidget{
  final double paddingBetweenComponents;

  const SendMessageTextField({required this.paddingBetweenComponents});

  @override
  Widget build(BuildContext context){
    return  Expanded(
      child: Container(
        padding: EdgeInsets.all(paddingBetweenComponents),

        child: const TextField(

          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
          decoration: InputDecoration(

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: Color(0xffBFBED3)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: Color(0xffBFBED3)),
            ),
            hintText: 'Type a message...',
            hintStyle: TextStyle(color: Color(0xffBFBED3)),
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 25), // Adjust the padding as needed
          ),

        ),
      ),
    );
  }
}