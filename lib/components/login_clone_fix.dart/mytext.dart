import 'package:flutter/material.dart';

class Mytext extends StatelessWidget {
  final bool obscureText;
  final String hint;
  final bool filled;
  final Color color;
  final Icon preIcon;
  final double radius;
  final BorderSide bs;
  const Mytext({
    super.key,
    required this.hint,
    required this.filled,
    required this.color,
    required this.preIcon,
    required this.radius,
    required this.obscureText,
    required this.bs,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hint,
        filled: filled,
        fillColor: color,
        prefixIcon: preIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: bs,
        ),
      ),
    );
  }
}
