import 'package:flutter/material.dart';

class PropertySliderImageBox extends StatelessWidget {
  final String imageUrl;

  const PropertySliderImageBox({Key? key, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (MediaQuery.of(context).size.height * 0.05),

      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
