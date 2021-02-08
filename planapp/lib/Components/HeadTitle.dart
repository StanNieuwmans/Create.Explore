import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeadTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 15.0),
      child: Flexible(
          ///Problem with Sizing for all sizes on mobile -- look into that
          child: Text(
            "Pack your bag and create unbelievable adventures and explore the world",
            style: TextStyle(fontSize: (MediaQuery.of(context).size.height / 35), fontFamily: 'RoboSlab'),
            textAlign: TextAlign.left,
          )),
    );
  }
}
