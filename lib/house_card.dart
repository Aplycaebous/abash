import 'package:flutter/material.dart';
import 'package:abash/item_model.dart';

class HouseCard extends StatefulWidget {
  HouseCard(this.item, this.onTap, {super.key});
  Item item;
  Function()? onTap;

  @override
  State<HouseCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<HouseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 285.93,
      height: 268.0,
      margin: const EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: InkWell(
        onTap: widget.onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)),
                color: Colors.grey.shade200,
                image: DecorationImage(
                  image: NetworkImage(widget.item.thumbURL!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 15.0,

            ),

            Row(
              children: [
                Container(
                  // color: Color(0xFFF9F9F9),
                  margin: const EdgeInsets.only(
                    left: 15,
                  ),
                  width: 170,
                  // padding: const EdgeInsets.only(right: 80),
                  child: Text(
                    widget.item.titel!,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  // color: Color(0xFFF9F9F9),
                  margin: const EdgeInsets.only(
                    left: 55,
                  ),
                  child: const Icon(
                    Icons.favorite_outlined,
                    color: Color.fromARGB(255, 219, 80, 80),
                    size: 21.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                ),
              ],
            ),

            Container(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              child: Row(
                children: [
                  const Icon(Icons.location_on, color: Colors.grey),
                  Text(
                    widget.item.location!,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 82, 79, 79),
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.only(
                top: 10,
                left: 15,
              ),
              child: const Row(
                children: [
                  Text(
                    "2,100 Square feet",
                    style: TextStyle(
                      color: Color.fromARGB(255, 42, 40, 40),
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      fontFamily: 'DM Sans',
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.only(
                top: 10,
                left: 15,
              ),
              padding: const EdgeInsets.all(0),
              child: const Row(
                children: [
                  Icon(
                    Icons.bed_rounded,
                    color: Color.fromARGB(255, 0, 0, 0),
                    size: 15,
                  ),
                  Text(
                    " 3 bedrooms  ",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Icon(
                    Icons.bathtub_outlined,
                    color: Color.fromARGB(255, 0, 0, 0),
                    size: 15,
                  ),
                  Text(
                    " 2 bathroom  ",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Icon(
                    Icons.stairs_outlined,
                    color: Color.fromARGB(255, 0, 0, 0),
                    size: 15,
                  ),
                  Text(
                    " 4th floor ",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 18.0,
                left: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${widget.item.price} BDT / per month",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 66, 132, 162),
                        fontSize: 18.0),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
