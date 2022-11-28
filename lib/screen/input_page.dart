import 'package:bmi_caculator/caculator_brain.dart';
import 'package:bmi_caculator/components/buttom_button.dart';
import 'package:bmi_caculator/components/icon_widget.dart';
import 'package:bmi_caculator/components/resuable_widget.dart';
import 'package:bmi_caculator/components/round_icon_button.dart';
import 'package:bmi_caculator/constants.dart';
import 'package:bmi_caculator/screen/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';





enum Gender{
  male,
  female,
}

class InputPage extends StatefulWidget {

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

   Gender? selectedGender;
   int height = 180;
   int weight = 60;
   int age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Resuable(
                    onPress: (){
                      setState(() {
                          selectedGender = Gender.male;
                      });

                    },
                      cardchid: IconWidget(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                      colour: selectedGender == Gender.male ? activeColor : inactivateColor,
                  ),
                ),
                Expanded(
                  child: Resuable(
                    onPress: (){
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    cardchid: IconWidget(
                      icon: FontAwesomeIcons.venus,
                      label: 'Female',
                    ),
                    colour: selectedGender == Gender.female ? activeColor : inactivateColor,
                  ),
                ),


              ],
            ),
          ),
          Expanded(
            child: Resuable(colour: activeColor,
            cardchid: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('HEIGHT',style: textLabel,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                  Text(
                    height.toString(),
                    style: kNumberTextStyle,
                  ),
                  Text(
                    'cm',
                    style: textLabel,
                  )
                ],
                ),
                Slider(value: height.toDouble(),
                min: 120.0,
                max: 220.0,
                 onChanged: (double showVaule){
                        setState(() {
                          height = showVaule.round();
                        });
                 },   )
              ],
            ),),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(child: Resuable(
                  cardchid: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('WEIGHT',
                      style: textLabel,),
                      Text(
                        weight.toString(),
                        style: kNumberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPress: (){
                             setState(() {
                               weight--;
                             });
                            },
                          ),
                          SizedBox(width: 10.0,),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPress: (){
                              setState(() {
                                weight++;
                              });
                            },
                          ),

                        ],

                      ),




                    ],
                  ),
                  colour: activeColor),

              ),
              Expanded(child: Resuable(colour: activeColor,
              cardchid: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('AGE',
                    style: textLabel,),
                  Text(
                    age.toString(),
                    style: kNumberTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoundIconButton(
                        icon: FontAwesomeIcons.minus,
                        onPress: (){
                          setState(() {
                            setState(() {
                              age--;
                            });
                          });
                        },
                      ),
                      SizedBox(width: 10.0,),
                      RoundIconButton(
                        icon: FontAwesomeIcons.plus,
                        onPress: (){
                          setState(() {
                            age++;
                          });
                        },
                      ),

                    ],

                  ),




                ],
              ),
              )),
            ],
          )),
          ButtomButton(
            onTap: (){

              CaculatorBrain calc = CaculatorBrain(height: height,weight: weight);
              calc.getResult();
              Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage(
                bmiResult: calc.caculateBMI(),
                resultText: calc.getResult(),
                interpertation: calc.getInterpretation(),

              )));

            },
            buttonTitle: "CACULATE",
          ),
        ],
      ),
    );
  }
}









