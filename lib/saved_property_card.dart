import 'package:flutter/material.dart';
import 'package:abash/item_model.dart';

class SavedPropertyCard extends StatefulWidget {
  SavedPropertyCard(this.item, this.onTap, {super.key});

  Item item;
  Function()? onTap;

  @override
  State<SavedPropertyCard> createState() => _SavedPropertyCardState();
}

class _SavedPropertyCardState extends State<SavedPropertyCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 165,
      margin: const EdgeInsets.only(right: 16.0, bottom: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(12.0),
        // border: Border.all(color: Colors.grey.shade200),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(178, 178, 178, 0.2),
            offset: Offset(0, 10),
            blurRadius: 30,
            spreadRadius: 0,
          ),
        ],
      ),
      child: InkWell(
        onTap: widget.onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 3,
              height: 150,
              margin: const EdgeInsets.only(
                left: 8,
                top: 9,
                bottom: 8,
              ),
              decoration: BoxDecoration(
                // color: Colors.amber,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                // color: Colors.grey.shade200,
                image: DecorationImage(
                  image: AssetImage(widget.item.thumbURL!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        left: 8,
                        top: 8,
                      ),
                      width: 150,
                      child: Text(
                        widget.item.titel!,
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 15.0,
                            height: (18.23 / 14)),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      width: 35,
                    ),
                    Container(
                      // color: Color(0xFFF9F9F9),
                      margin: const EdgeInsets.only(
                        right: 10,
                        top: 8,
                      ),
                      child: const Icon(
                        Icons.favorite_outlined,
                        color: Color.fromARGB(255, 219, 80, 80),
                        size: 21.0,
                        semanticLabel:
                            'Text to announce in accessibility modes',
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 16,
                  margin: const EdgeInsets.only(left: 8),
                  // width:104,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Color.fromARGB(255, 34, 37, 42),
                        size: 14,
                      ),
                      Text(
                        widget.item.location!,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 34, 37, 42),
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          height: 1.3,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 10,
                    left: 10,
                  ),
                  child: const Text(
                    "2,100 Square feet",
                    style: TextStyle(
                      color: Color.fromARGB(255, 34, 37, 42),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      fontFamily: 'DM Sans',
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 8,
                    left: 8,
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.bed_rounded,
                        color: Color.fromARGB(255, 34, 37, 42),
                        size: 15,
                      ),
                      Text(
                        " 3 bedrooms  ",
                        style: TextStyle(
                          color: Color.fromARGB(255, 34, 37, 42),
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.normal,
                          fontSize: 13,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Icon(
                        Icons.bathtub_outlined,
                        color: Color.fromARGB(255, 34, 37, 42),
                        size: 15,
                      ),
                      Text(
                        " 2 bathroom  ",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 13,
                          color: Color.fromARGB(255, 34, 37, 42),
                          fontFamily: 'DM Sans',
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 8,
                    top: 4,
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.stairs_outlined,
                        color: Color.fromARGB(255, 34, 37, 42),
                        size: 15,
                      ),
                      Text(
                        " 4th floor ",
                        style: TextStyle(
                          color: Color.fromARGB(255, 34, 37, 42),
                          fontFamily: 'DM Sans',
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
          ],
        ),
      ),
    );
  }
}
