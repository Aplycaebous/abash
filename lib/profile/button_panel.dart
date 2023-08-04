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
  @override
  Widget build(BuildContext context) {
    bool _isButton1Active = true;
    bool _isButton2Active = false;
    return Container(
      width: double.infinity, // Full screen width
      padding: const EdgeInsets.all(8.0),
      color: const Color(0xFFF9F9F9),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFB2B2B2).withOpacity(0.33),
                    offset: Offset(0, 10),
                    blurRadius: 30,
                    spreadRadius: 0,
                  ),
                ],
                gradient: widget.showAddedProperties
                    ? const LinearGradient(
                        colors: [Color(0xFF5FB4E5), Color(0xFF0A8ED9)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      )
                    : null,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: ElevatedButton(
                onPressed: widget.showAddedProperties
                    ? null
                    : () {
                        widget.onToggle();
                        setState(() {
                          _isButton1Active = true;
                          _isButton2Active = false;
                        });
                      },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                child: Text('Added Property',
                    style: TextStyle(
                        fontSize: 14,
                        color: widget.showAddedProperties
                            ? const Color(0xFFF9F9F9)
                            : const Color(0xFF7F8793))),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFFB2B2B2).withOpacity(0.33),
                    offset: const Offset(0, 10),
                    blurRadius: 30,
                    spreadRadius: 0,
                  ),
                ],
                gradient: widget.showAddedProperties
                    ? null
                    : const LinearGradient(
                        colors: [Color(0xFF5FB4E5), Color(0xFF0A8ED9)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: ElevatedButton(
                onPressed: widget.showAddedProperties
                    ? () {
                        widget.onToggle();
                        setState(() {
                          _isButton1Active = false;
                          _isButton2Active = true;
                        });
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                child: Text('Rented Property',
                    style: TextStyle(
                        fontSize: 14,
                        color: widget.showAddedProperties
                            ? const Color(0xFF7F8793)
                            : const Color(0xFFF9F9F9))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
