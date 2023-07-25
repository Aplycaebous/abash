import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 15),
        Text("Jahangir Villa",style: TextStyle(color: Colors.blueAccent,fontSize: 18.0)),
        SizedBox(height: 4),
        Text("Block 12, Road 18, Dhanmondi, Dhaka",style: TextStyle(color: Colors.black,fontSize: 14.0)),
        SizedBox(height: 4),
        Text("5,800 Square feet",style: TextStyle(color: Colors.grey,fontSize: 15)),
        Padding(padding: EdgeInsets.only(left:0,right:0,top:4,bottom:4),child:Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.bed_outlined, color: Colors.grey),
            SizedBox(width: 4),
            Text(
              '4 bedrooms',
              style: TextStyle(fontSize: 14, color:Colors.grey),
            ),
            SizedBox(width: 8),
            Icon(Icons.bathtub_outlined, color: Colors.grey),
            SizedBox(width: 4),
            Text(
                '4 bathrooms',
                style: TextStyle(fontSize: 14, color:Colors.grey)),
            SizedBox(width: 8),
            Icon(Icons.stairs_outlined, color: Colors.grey),
            SizedBox(width: 4),
            Text(
                '4th floor',
                style: TextStyle(fontSize: 14, color:Colors.grey)),
          ],
        )),
            Padding(padding: EdgeInsets.only(left:0,right:0,top:4,bottom: 4),child:Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.elevator_outlined, color: Colors.grey),
                SizedBox(width: 4),
                Text(
                  'Elevator available',
                  style: TextStyle(fontSize: 14, color:Colors.grey),
                ),
                SizedBox(width: 8),
                Icon(Icons.local_parking_rounded, color: Colors.grey),
                SizedBox(width: 4),
                Text(
                    'Parking available',
                    style: TextStyle(fontSize: 14, color:Colors.grey)),
              ],
            )),
            SizedBox(height: 15),
            Text("Description",style: TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold)),
            SizedBox(height: 15),
            Text("This modern and spacious apartment features two bedrooms and two bathrooms. The open plan living area boasts high ceilings and hardwood floors, while the fully-equipped kitchen includes stainless steel appliances and granite countertops. Enjoy fresh air and city views from the balcony. Other amenities include a fitness center and swimming pool. Conveniently located near downtown, this apartment offers easy access to restaurants, shops, and public transportation.",style: TextStyle(color: Colors.black,fontSize: 14.0)),
          ]);
  }
}