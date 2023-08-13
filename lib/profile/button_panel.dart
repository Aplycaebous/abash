import 'package:flutter/material.dart';

class ButtonPanel extends StatefulWidget {
  final VoidCallback onToggle;
  final bool showAddedProperties;

  ButtonPanel({
    required this.onToggle,
    required this.showAddedProperties,
  });

  @override
  _ButtonPanelState createState() => _ButtonPanelState();
}

class _ButtonPanelState extends State<ButtonPanel> {
  bool isAddedPropertyActive = true;
  bool isRentedPropertyActive = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8.0),
      color: const Color(0xFFF9F9F9),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  isAddedPropertyActive = true;
                  isRentedPropertyActive = false;
                });
                widget.onToggle();
              },
              child: Container(
                decoration: BoxDecoration(
                  gradient: isAddedPropertyActive
                      ? const LinearGradient(
                    colors: [Color(0xFF5FB4E5), Color(0xFF0A8ED9)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  )
                      : null,
                  color: isAddedPropertyActive ? null : Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                alignment: Alignment.center,
                child: Text(
                  'Added Property',
                  style: TextStyle(
                    fontSize: 14,
                    color: isAddedPropertyActive ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  isAddedPropertyActive = false;
                  isRentedPropertyActive = true;
                });
                widget.onToggle();
              },
              child: Container(
                decoration: BoxDecoration(
                  gradient: isRentedPropertyActive
                      ? const LinearGradient(
                    colors: [Color(0xFF5FB4E5), Color(0xFF0A8ED9)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  )
                      : null,
                  color: isRentedPropertyActive ? null : Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                alignment: Alignment.center,
                child: Text(
                  'Rented Property',
                  style: TextStyle(
                    fontSize: 14,
                    color: isRentedPropertyActive ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
