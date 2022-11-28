import 'package:bmi_caculator/screen/input_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';


void main() => runApp(BMICaculator());

class BMICaculator extends StatelessWidget {
  const BMICaculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(color: inactivateColor),
        sliderTheme: SliderTheme.of(context).copyWith(
            inactiveTrackColor: Color(0xFF565151),
            activeTrackColor: Color(0xFFFFFCFC),
            thumbColor: Color(0xFFEB1555),
            overlayColor: Color(0x29EB1555),
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)
        ),
      primaryColor: Color(0xFF164B9A),
          scaffoldBackgroundColor: Color(0xFF121D2C),
      ),
      home: InputPage(),
    );
  }
}


