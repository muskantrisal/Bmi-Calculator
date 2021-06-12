import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:bmi_calculator/Functions.dart';

double valHeight = 60.0;

class SliderCard extends StatefulWidget {
  SliderCard({@required this.colour, this.text});
  final Color colour;
  final Text text;
  @override
  _SliderCardState createState() => _SliderCardState(
        colour: colour,
        text: text,
      );
}

class _SliderCardState extends State<SliderCard> {
  _SliderCardState({@required this.colour, this.text});

  final Text text;
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          text,
          SizedBox(
            height: 15,
          ),
          Text(valHeight.toString() + ' cm'),
          SfSlider(
            min: 50.0,
            max: 200.0,
            value: valHeight,
            interval: 30,
            showTicks: true,
            showLabels: true,
            enableTooltip: true,
            minorTicksPerInterval: 1,
            onChanged: (dynamic value) {
              setState(() {
                valHeight = roundDouble(value, 2);
              });
            },
          ),
        ],
      ),
    );
  }
}
