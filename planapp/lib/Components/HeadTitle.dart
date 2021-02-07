import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeadTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
                child: Text(
                  "Pack your bag and create unbelievable adventures and explore the world",
                  style: TextStyle(fontSize: 35, fontFamily: 'RoboSlab'),
                  textAlign: TextAlign.left,
                ),
                padding:
                    EdgeInsets.symmetric(horizontal: 35.0, vertical: 15.0));
  }
}