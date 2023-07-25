import 'package:abash/description.dart';
import 'package:abash/footer_owner.dart';
import 'package:abash/google_map_view.dart';
import 'package:abash/property_image_slider.dart';
import 'package:abash/owner_info.dart';
import 'package:flutter/material.dart';


class RentalDetails extends StatelessWidget {
  const RentalDetails({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Details Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Details'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isIconColored = false;

  void editButtonClick(){
    setState(() {
      isIconColored = !isIconColored;
    });
  }

  List<String> imageUrls = [
    'assets/images/image 10.png',
    'assets/images/image 2.png',
    'assets/images/image 7.png',
    'assets/images/image 9.png',
    'assets/images/image 10.png',
  ];





  void toggleIconColor() {
    setState(() {
      isIconColored = !isIconColored;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white60,
          leading: const IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: null,
          ),
          title: const Center(
              child:Text("Details",style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "DM Sans",
                  fontSize: 18.0
              )
              )
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.favorite,color: isIconColored==true?Colors.redAccent:Colors.grey),
              onPressed: toggleIconColor,
            )
          ],
        ),
        body:Stack(children: [

          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0), // Add a left margin of 16 pixels

            child: ListView(
              scrollDirection: Axis.vertical,
              addAutomaticKeepAlives: false,
              children: [
                PropertyImageSlider(imageUrls: imageUrls),
                Description(),
                OwnerInfo(userName: "Rafiqul Islam", isOwner: true, onCallPressed: () {
                  Navigator.pop(context);
                },),
                const GoogleMapView(),
                const SizedBox(height:80)
              ],
            ),

          ),
          const FooterOwner(),
        ],)
    );
  }
}