import 'package:flutter/material.dart';

//complete this!!
class DeleteModal extends StatelessWidget {
  const DeleteModal({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Delete Option"),
      content: Text("This is the delete modal content."),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Close"),
        ),
      ],
    );
  }
}
