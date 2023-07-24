import 'package:flutter/material.dart';

class FooterOwner extends StatelessWidget{
  const FooterOwner({super.key});
  @override
  Widget build(BuildContext context){
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        color: const Color(0xFF22252A),
        child: Center(
          child: Padding(
              padding:const EdgeInsets.only(left: 12,top:12,right: 12,bottom: 12),
              child:Row(
                children: [
                  const Text(
                    '45,000 BDT / per month',
                    style: TextStyle(color:Colors.white,fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 8),
                  OutlinedButton(
                    onPressed: null,
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: const BorderSide(color: Colors.black, width: 2), // Add a border here
                        )
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left:10,right:10),
                      child: Text('Edit',style: TextStyle(fontSize:20,color: Colors.black)),
                    ),
                  ),
                ],
              )
          ),
        ),
      ),
    );
  }
}