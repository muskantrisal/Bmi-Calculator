import 'package:flutter/material.dart';
import 'Slider.dart';
import 'WeightAge.dart';
import 'package:bmi_calculator/InputPage.dart';
import 'Alert.dart';
import 'Result.dart';
import 'package:bmi_calculator/Functions.dart';

class CalculatorButtom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (isMale == null) {
            showAlertDialog(context);
          } else {
            double bmiOutput =
                roundDouble(calculatorBrain(valHeight, valWeight), 1);
            String finalStatement = statement(bmiOutput);
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ResultCard(
                        bmi: bmiOutput,
                        finalStatement: finalStatement,
                      )),
            );
            print(bmiOutput);
          }
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.065,
          color: Colors.redAccent,
          width: double.infinity,
          child: Center(
            child: Text("CALCULATE"),
          ),
        ));
  }
}
