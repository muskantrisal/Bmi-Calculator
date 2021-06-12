import 'package:flutter/material.dart';

int valWeight = 50;
int valAge = 15;

class ReusableWeight extends StatefulWidget {
  ReusableWeight({
    @required this.colour,
    this.text,
  });
  final Text text;
  final Color colour;

  @override
  _ReusableWeightState createState() => _ReusableWeightState(
        colour: colour,
        text: text,
      );
}

class _ReusableWeightState extends State<ReusableWeight> {
  _ReusableWeightState({
    @required this.colour,
    this.text,
  });
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
          Text(valWeight.toString() + ' kg'),
          Row(
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      valWeight--;
                    });
                  },
                  child: Icon(Icons.remove)),
              SizedBox(
                width: 15,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      valWeight++;
                    });
                  },
                  child: Icon(Icons.add))
            ],
          )
        ],
      ),
    );
  }
}

class ReusableAge extends StatefulWidget {
  ReusableAge({
    @required this.colour,
    this.text,
  });
  final Text text;
  final Color colour;

  @override
  _ReusableAgeState createState() => _ReusableAgeState(
        colour: colour,
        text: text,
      );
}

class _ReusableAgeState extends State<ReusableAge> {
  _ReusableAgeState({
    @required this.colour,
    this.text,
  });
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
          Text(valAge.toString()),
          Row(
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      valAge--;
                    });
                  },
                  child: Icon(Icons.remove)),
              SizedBox(
                width: 15,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      valAge++;
                    });
                  },
                  child: Icon(Icons.add))
            ],
          )
        ],
      ),
    );
  }
}
