import 'package:flutter/material.dart';

class ResultCard extends StatefulWidget {
  ResultCard({@required this.bmi, this.finalStatement});
  final double bmi;
  final String finalStatement;

  @override
  _ResultCardState createState() =>
      _ResultCardState(bmi: bmi, finalStatement: finalStatement);
}

class _ResultCardState extends State<ResultCard> {
  _ResultCardState({@required this.bmi, this.finalStatement});
  final double bmi;
  final String finalStatement;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.all(20.0),
        color: Color(0xFF1D1E33),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "YOUR BMI",
                style: TextStyle(fontSize: 50),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                bmi.toString(),
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                finalStatement,
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
        ),
      ),
    );
  }
}
