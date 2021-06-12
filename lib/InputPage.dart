import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'components/MaleFemaleCard.dart';
import 'components/WeightAge.dart';
import 'components/Slider.dart';
import 'components/CalculateButton.dart';

bool isMale;
Color maleColor = Color(0xFF1D1E33);
Color femaleColor = Color(0xFF1D1E33);

void checkColour(isMale) {
  if (isMale != null) {
    if (isMale == true) {
      maleColor = Color(0xFF1D1E22);
      femaleColor = Color(0xFF1D1E33);
    } else {
      femaleColor = Color(0xFF1D1E22);
      maleColor = Color(0xFF1D1E33);
    }
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = true;
                      checkColour(isMale);
                    });
                  },
                  child: ReusableMaleFemale(
                    colour: maleColor,
                    icon: Icon(
                      FontAwesomeIcons.mars,
                      size: iconSize,
                    ),
                    text: Text(
                      "MALE",
                      style: TextStyle(fontSize: fontSize),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = false;
                      checkColour(isMale);
                    });
                  },
                  child: ReusableMaleFemale(
                    colour: femaleColor,
                    icon: Icon(
                      FontAwesomeIcons.venus,
                      size: iconSize,
                    ),
                    text: Text(
                      "FEMALE",
                      style: TextStyle(fontSize: fontSize),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: SliderCard(
            colour: Color(0xFF1D1E33),
            text: Text(
              "HEIGHT",
              style: TextStyle(fontSize: fontSize),
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableWeight(
                  colour: Color(0xFF1D1E33),
                  text: Text(
                    "WEIGHT",
                    style: TextStyle(fontSize: fontSize),
                  ),
                ),
              ),
              Expanded(
                child: ReusableAge(
                  colour: Color(0xFF1D1E33),
                  text: Text(
                    "AGE",
                    style: TextStyle(fontSize: fontSize),
                  ),
                ),
              )
            ],
          ),
        ),
        CalculatorButtom()
      ]),
    );
  }
}
