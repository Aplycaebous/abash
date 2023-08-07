import 'package:abash/saved_property_card.dart';
import 'package:flutter/material.dart';
import 'package:abash/item_model.dart';

class SavedProperties extends StatefulWidget {
  SavedProperties(this.title, this.items, {super.key});
  String? title;
  List<Item> items;
  @override
  State<SavedProperties> createState() => _SavedPropertiesState();
}

class _SavedPropertiesState extends State<SavedProperties> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: AppBar(
        title: Text(
          widget.title!,
          style: const TextStyle(
            color: Colors.black,
            fontFamily: 'DM Scans'
          ),
        ),
        backgroundColor: const Color(0xFFFFFFFF),
        elevation: 0,
      ),
      body: Container(
          padding: const EdgeInsets.only(left:18),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: widget.items.length,
            itemBuilder: (context, index) =>
                SavedPropertyCard(widget.items[index], () {}),
          ),
        ),
    );
  }
}
