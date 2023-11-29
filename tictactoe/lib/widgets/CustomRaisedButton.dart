import 'package:flutter/material.dart';

class CustomRaisedButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;

  const CustomRaisedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = Colors.red,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  State<CustomRaisedButton> createState() => _CustomRaisedButtonState();
}

class _CustomRaisedButtonState extends State<CustomRaisedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: widget.textColor,
        backgroundColor: widget.color, // Text color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: Text(widget.text),
    );
  }
}
