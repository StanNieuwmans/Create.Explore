import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeadTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: FittedBox(
          fit: BoxFit.contain, ///Problem with Sizing for all sizes on mobile -- look into that
            child: Text(
              "Pack your bag and create unbelievable adventures and explore the world",
              maxLines: 3,
              style: TextStyle(fontSize: 35, fontFamily: 'RoboSlab'),
              textAlign: TextAlign.left,
            )),
        padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 15.0));
  }
}
