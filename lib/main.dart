import 'package:abash/screens/search_result_screen.dart';
import 'package:abash/screens/search_screen.dart';
import 'package:flutter/material.dart';

const kPrimaryColor= Color(0xFF53AFE4);

void main() {
  runApp(SearchPage());
}


class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kPrimaryColor,
      ),
      home: SearchResultScreen(),
    );
  }
}
