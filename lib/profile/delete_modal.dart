import 'package:flutter/material.dart';

//complete this!!
class DeleteModal extends StatelessWidget {
  const DeleteModal({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Center(
          child: Text("Remove Property?",style: TextStyle(color: Colors.black, fontSize: 18))
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Yes"),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("No"),
        )
      ]
    );
  }
}
