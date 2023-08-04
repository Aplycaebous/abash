import 'package:abash/profile/edit_delete_options.dart';
import 'package:flutter/material.dart';

class RentedPropertyCard extends StatefulWidget {
  final Map<String, dynamic> propertyData;
  const RentedPropertyCard({Key? key, required this.propertyData})
      : super(key: key);

  @override
  _RentedPropertyCardState createState() => _RentedPropertyCardState();
}

class _RentedPropertyCardState extends State<RentedPropertyCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: const Color(0xFFFFFFFF),
          child: Padding(
            padding: const EdgeInsets.all(8.0), // Add padding to the card
            child: Row(
              children: [
                // Image on the left (Replace this with your image widget)
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.network(
                    widget.propertyData['imageUrl'],
                    width: 110,
                    height: 140,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16), // Add spacing between image and text
                // Text on the right
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.propertyData['title'],
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        widget.propertyData['location'],
                        style: const TextStyle(
                          fontSize: 12,
                          color: Color(0xFF22252A),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        widget.propertyData['area'],
                        style: const TextStyle(
                          fontSize: 12,
                          color: Color(0xFF22252A),
                        ),
                      ),
                      const SizedBox(height: 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(Icons.bed_outlined),
                          const SizedBox(width: 4),
                          Text(
                            '${widget.propertyData['bedrooms']} bedrooms',
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color(0xFF22252A),
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Icon(Icons.bathtub_outlined),
                          const SizedBox(width: 4),
                          Text(
                            '${widget.propertyData['bathrooms']} bathrooms',
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color(0xFF22252A),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(Icons.stairs_outlined),
                          const SizedBox(width: 4),
                          Text(
                            '${widget.propertyData['floor']}',
                            style: const TextStyle(
                              fontSize: 12,
                              color: Color(0xFF22252A),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('${widget.propertyData['rent']} BDT / per month',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.blueAccent)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
