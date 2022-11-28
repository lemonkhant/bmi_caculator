

import 'package:flutter/material.dart';

import '../constants.dart';

class ButtomButton extends StatelessWidget {

  ButtomButton({required this.onTap,required this.buttonTitle});
  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 20.0),
        child: Center(child: Text(buttonTitle,style: KLargeButtomTextStyle,)),
        color: Color(0xFFEB1555),
        margin: EdgeInsets.only(top: 5.0),
        width: double.infinity,
        height: 70.0,
      ),
    );
  }
}