import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TripPreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      width: MediaQuery.of(context).size.width / 1.8,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("../assets/josh.jpg"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20),
          color: Colors.white),
    );
  }
}
