import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget{
  const Menu({super.key});

  @override
  _MenuStates createState() => _MenuStates();
}

class _MenuStates extends State<Menu>{
  String _lanuage="eng";

  final selectedContainer = BoxDecoration(
    gradient: const LinearGradient(
      colors: [
        Color(0xFF5FB4E5), // Use the actual color values here
        Color(0xFF0A8ED9),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
    borderRadius: BorderRadius.circular(12), // Adjust the radius value as needed
  );

  final unselectedContainer = BoxDecoration(
    color: const Color(0xFF7F8793), // Fixed background color without gradient
    borderRadius: BorderRadius.circular(12), // Adjust the radius value as needed
  );

  void _setLanguage(String lang){
    setState(() {
      _lanuage = lang;
    });
  }

  @override
  Widget build(BuildContext context){
    return Drawer(
      width: 250,
      backgroundColor: Colors.white,
      child:ListView(
          children:  [
            const ListTile(
              title:Text('Menu',style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "DM Sans",
                  fontSize: 26.0)),
              trailing: CloseButton(),
            ),
            Padding(padding: const EdgeInsets.only(left:10,right:10,bottom:20,top:20),child:Row(
              children: [
                Container(
                  width: 70,
                    decoration: _lanuage=="eng"?selectedContainer:unselectedContainer,
                  child:TextButton(
                    onPressed: (){
                      _setLanguage("eng");
                    },
                    child: const Text('English',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  )
                ),
                const SizedBox(width: 10),
                Container(
                  width: 70,
                  decoration: _lanuage=="ban"?selectedContainer:unselectedContainer,
                    child:TextButton(
                      onPressed: (){
                        _setLanguage("ban");
                      },
                      child: const Text('বাংলা',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    )
                )
              ],
            )),
            const ListTile(
                leading: ImageIcon(
                  AssetImage('../../assets/icons/privacy_policy.png'),
                ),
                title: Text('Settings'),
                onTap:null
            ),
            const ListTile(
                leading: ImageIcon(
                  AssetImage('../../assets/icons/terms&conditions.png'),
                ),
                title: Text('Terms & Conditions'),
                onTap:null
            ),
            const ListTile(
                leading: ImageIcon(
                  AssetImage('../../assets/icons/verified_user.png'),
                ),
                title: Text('Privacy Policy'),
                onTap:null
            ),
            const ListTile(
                leading: ImageIcon(
                  AssetImage('../../assets/icons/logout.png'),
                ),
                title: Text('Logout'),
                onTap:null
            )
          ]),
    );
  }
}