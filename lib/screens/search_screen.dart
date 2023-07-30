import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF53AFE4);

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  List<String> searchItems = [
    'Dhanmondi Lake',
    'Lake View Dhanmondi',
    'Green Road',
    'Uttara',
    'Concord City',
    'Rupayan City Uttara'
  ];
  
  List<String> foundItems = [];
  
  @override
  void initState() {
    super.initState();
    foundItems=searchItems;
  }
  
  
  void showSearchResults(String enteredValue){
    List<String> results = [];
    
    if(enteredValue.isNotEmpty){
      results= searchItems.where((item) => item.toLowerCase().contains(enteredValue.toLowerCase())).toList();
    }else{
      results=searchItems;
    }
    
    setState(() {
      foundItems = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildSearchBar(context),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(margin: EdgeInsets.only(left: 15,top: 15),child: Text('Suggestions', style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.w700),)),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: foundItems.length,
              itemBuilder: (context,index)=> Card(
                // shadowColor: Colors.white,
                elevation: 0,
                // margin: EdgeInsets.zero,
                child: ListTile(
                  visualDensity: VisualDensity(horizontal: 0,vertical: -4),
                  title: Text(foundItems[index],
                    // style: TextStyle(fontSize: 12),
                  ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }


  
  PreferredSize buildSearchBar(BuildContext context) {

    return PreferredSize(
      preferredSize: Size.fromHeight(100),
    child: AppBar(
      elevation: 0,
      toolbarHeight: 100,
      backgroundColor: kPrimaryColor,
      leading: null,
      foregroundColor: Colors.black,
      actions: <Widget>[
        IconButton(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 30),
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () {
              setState(() async {
                Navigator.pop(context);
              });
            }),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Container(
              margin: EdgeInsets.only(top: 20,bottom: 20),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.search,color: Colors.grey,),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                          fillColor: Colors.white,
                          hintText: 'Search house',
                          hintStyle: TextStyle(color: Colors.grey)),
                      onChanged: (value)=> showSearchResults(value),
                    ),
                  ),
                  Icon(Icons.sync_alt)
                ],
              ),
            ),
          ),
        )
      ],
    ),
  );
  }
}
