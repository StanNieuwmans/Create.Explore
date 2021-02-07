import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          hintText: 'What would you like to explore?',
          hintStyle: TextStyle(
            fontSize: 20.0,
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.all(0.0),
            child: Icon(Icons.search, color: Colors.grey),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 25.0),
    );
  }
}
