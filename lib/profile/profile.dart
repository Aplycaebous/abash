import 'package:abash/partials/navbar.dart';
import 'package:abash/profile/menu.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget{
  const Profile({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0x00f9f9f9),
        leading: const IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: null,
        ),
     title: const Center(
        child:Text("Profile",style:TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: "DM Sans",
        fontSize: 18.0
        )
      )
    ),
    ),
        endDrawer:const Menu(),
      bottomNavigationBar:NavbarBottom(),

      );
  }
}

