import 'package:flutter/material.dart';

class PropertySliderImageBox extends StatelessWidget {
  final String imageUrl;

  const PropertySliderImageBox({Key? key, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: (MediaQuery.of(context).size.width*0.2125),
            width: (MediaQuery.of(context).size.width*0.2125),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      )
      ;
  }
}
