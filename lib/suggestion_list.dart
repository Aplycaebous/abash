import 'package:abash/house_card.dart';
import 'package:flutter/material.dart';
import 'package:abash/item_model.dart';

class SuggestionList extends StatefulWidget {
  SuggestionList(this.title, this.items, {Key? key}) : super(key: key);
  String? title;
  List<Item> items;

  @override
  State<SuggestionList> createState() => _SuggestionListState();
}

class _SuggestionListState extends State<SuggestionList> {
  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.width);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.title!,
                style: const TextStyle(
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700,
                    fontSize: 18.0)),
            TextButton(
              onPressed: () {},
              child: const Text("See More",
                  style: TextStyle(
                      fontFamily: 'DM Sans',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500)),
            )
          ],
        ),
        const SizedBox(
          height: 10.0,
        ),
        SizedBox(
          height: 320.0,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.items.length,
            itemBuilder: (context, index) =>
                HouseCard(widget.items[index], () {}),
          ),
        ),
      ],
    );
  }
}
