import 'package:flutter/material.dart';

class ReusableMaleFemale extends StatelessWidget {
  ReusableMaleFemale({@required this.colour, this.icon, this.text});
  final Icon icon;
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
          icon,
          SizedBox(
            height: 15,
          ),
          text
        ],
      ),
    );
  }
}
