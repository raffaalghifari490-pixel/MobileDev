import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Textfield extends StatelessWidget {
  final String myHint;
  final TextEditingController txtController;
  final double radius;

  const Textfield({
    super.key,
    required this.myHint,
    required this.txtController,
    required this.radius,

  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: InputDecoration(
        hintText: myHint,
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 14,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 15,
        ),
        filled: true,
        fillColor: Colors.white,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.grey.shade300,
          ),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.grey.shade300,
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.blue,
            width: 1.5,
          ),
        ),
      ),
    );
  }
}
