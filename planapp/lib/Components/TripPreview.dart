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
            image: NetworkImage(
                "https://images.unsplash.com/photo-1612728303797-aad63f9dee79?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20),
          color: Colors.white),
    );
  }
}
