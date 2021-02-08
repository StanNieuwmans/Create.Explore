import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:planapp/Components/TripPreview.dart';

class TripPreviewWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
        height: MediaQuery.of(context).size.height / 1.7, //fix height of preview
        child:
            ListView(scrollDirection: Axis.horizontal, children: <TripPreview>[
          TripPreview(),
          TripPreview(),
          TripPreview(),
          TripPreview(),
          TripPreview(),
          TripPreview(),
          TripPreview(),
          TripPreview(),
          TripPreview(),
          TripPreview(),
        ]));
  }
}
