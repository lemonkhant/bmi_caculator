import 'package:flutter/material.dart';

class Resuable extends StatelessWidget {
  final Color colour;
  final Widget? cardchid;
  final VoidCallback ? onPress;
  Resuable({required this.colour, this.cardchid, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardchid,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.all(10.0),
      ),
    );
  }
}