import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nba_counter/constants.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key, required this.color, required this.text, this.onPressed});

  final Color color;
  final String text;
  VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
