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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child:Text(
                      '55,000 BDT / per month',
                      style: TextStyle(color:Colors.white,fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: OutlinedButton(
                      onPressed: null,
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: const BorderSide(color: Colors.black, width: 2), // Add a border here
                          )
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left:5,right:5),
                        child: Text('Edit',style: TextStyle(fontSize:16,color: Colors.black,fontWeight: FontWeight.bold)),
                      ),
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