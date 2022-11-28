import 'package:bmi_caculator/caculator_brain.dart';
import 'package:flutter/material.dart';

import '../components/buttom_button.dart';
import '../constants.dart';
import '../components/resuable_widget.dart';


class ResultPage extends StatelessWidget {
  ResultPage({required this.bmiResult,required this.resultText,required this.interpertation});

  final String bmiResult;
  final String resultText;
  final String interpertation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CACULATOR',style: KLargeButtomTextStyle,)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(
            padding: EdgeInsets.all(15.0),
          alignment: Alignment.bottomLeft,
          child: Text('Your Result', style: KresultTitle,),
            
          ),
          ),
          Expanded(
            flex: 5,
            child: Resuable(
              colour: activeColor,
              cardchid: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: resultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: KBMITextStyle,
                  ),
                  Text(interpertation, style: KBodyTextStyle,
                  textAlign: TextAlign.center,
                  ),
                  ButtomButton(onTap: (){

                    CaculatorBrain calc = CaculatorBrain();
                    Navigator.pop(context);

                  }, buttonTitle: 'RE-CACULATE',)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
