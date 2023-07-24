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
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigates back to the previous screen
          },
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
      body:const Text("Jahangir Villa")
    );
  }
}