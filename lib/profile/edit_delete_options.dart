import 'package:abash/profile/delete_modal.dart';
import 'package:flutter/material.dart';

class EditDeleteOptions extends StatefulWidget {
  const EditDeleteOptions({Key? key}) : super(key: key);

  @override
  _EditDeleteOptionsState createState() => _EditDeleteOptionsState();
}

class _EditDeleteOptionsState extends State<EditDeleteOptions> {
  bool _isHoveringEdit = false;
  bool _isHoveringDelete = false;

  void _showDeleteModal() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const DeleteModal();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    const optionWidth = 150.0; // Fixed width for the options container
    const optionHeight = 50.0; // Fixed height for the options container

    return Container(
      width: optionWidth,
      height: optionHeight * 2 + 20,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                right: 20.0,
                left: 20.0,
                top: 10.0), // Add the desired padding here
            child: buildOption('Edit', Icons.edit_note_outlined,
                _isHoveringEdit, optionWidth, optionHeight, null),
          ),
          Padding(
            padding: const EdgeInsets.only(
                right: 20.0,
                left: 20.0,
                bottom: 10.0), // Add the desired padding here
            child: buildOption('Remove', Icons.delete_forever_outlined,
                _isHoveringDelete, optionWidth, optionHeight, _showDeleteModal),
          ),
        ],
      ),
    );
  }

  Widget buildOption(String label, IconData icon, bool isHovering, double width,
      double height, Function()? onTap) {
    final color = isHovering ? const Color(0xFF0A8ED9) : const Color(0xFF22252A);

    return SizedBox(
      width: width,
      height: height,
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            if (label == 'Edit') {
              _isHoveringEdit = true;
              _isHoveringDelete = false;
            } else if (label == 'Remove') {
              _isHoveringEdit = false;
              _isHoveringDelete = true;
            }
          });
        },
        onExit: (event) {
          setState(() {
            _isHoveringEdit = false;
            _isHoveringDelete = false;
          });
        },
        child: GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              Icon(icon, color: color),
              const SizedBox(width: 4),
              Text(label, style: TextStyle(color: color, fontSize: 14)),
            ],
          ),
        ),
      ),
    );
  }
}
