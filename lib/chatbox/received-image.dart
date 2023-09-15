import 'package:flutter/material.dart';

class ReceivedImage extends StatelessWidget {
  final String imageUrl;

  const ReceivedImage({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8, // Adjust the width as needed
        margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: const Radius.circular(10.0),
            bottomRight: const Radius.circular(10.0),
            bottomLeft: const Radius.circular(10.0),
          ),
        ),
        child: ClipRRect( // Clip the image to round the corners
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0),
          ),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}


