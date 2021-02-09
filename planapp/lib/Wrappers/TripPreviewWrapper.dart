import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:planapp/Components/TripPreview.dart';

class TripPreviewWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 25.0),
        height: MediaQuery.of(context).size.height / 2,
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height / 1.7,
        ),
        child:
            ListView(scrollDirection: Axis.horizontal, children: <TripPreview>[
          TripPreview(
              postPreviewLandTitle: "Iceland",
              postPreviewLandText: "10 Places planned in your trip",
              postPreviewTripMonths: 10,
              postPreviewImageUrl:
                  "https://images.unsplash.com/photo-1612728303797-aad63f9dee79?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"),
          TripPreview(
              postPreviewLandTitle: "Greece",
              postPreviewLandText: "10 Places planned in your trip",
              postPreviewTripMonths: 10,
              postPreviewImageUrl:
                  "https://images.unsplash.com/photo-1504512485720-7d83a16ee930?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1379&q=80"),
          TripPreview(
              postPreviewLandTitle: "Norway",
              postPreviewLandText: "10 Places planned in your trip",
              postPreviewTripMonths: 10,
              postPreviewImageUrl:
                  "https://images.unsplash.com/photo-1531366936337-7c912a4589a7?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80"),
        ]));
  }
}
