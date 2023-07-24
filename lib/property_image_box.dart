import 'package:flutter/material.dart';

class PropertyImageBox extends StatelessWidget {
  final String imageUrl;

  const PropertyImageBox({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (MediaQuery.of(context).size.height * 0.3),
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
