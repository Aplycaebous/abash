import 'package:flutter/material.dart';

//complete this!!
class DeleteModal extends StatelessWidget {
  const DeleteModal({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
// <<<<<<< HEAD
//       title: Text("Delete Option"),
//       content: Text("This is the delete modal content."),
// =======
      title: const Center(
          child: Text("Remove Property?",style: TextStyle(color: Colors.black, fontSize: 18))
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
// <<<<<<< HEAD
//           child: Text("Close"),
//         ),
// =======
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
