import 'package:flutter/material.dart';

void main() => runApp(PlanApp());

// #docregion MyApp
class PlanApp extends StatelessWidget {
  // #docregion build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create. Explore.',
      theme: ThemeData(primaryColor: Colors.white),
      home: Home(),
    );
  }
  // #enddocregion build
}
// #enddocregion MyApp

// #docregion RWS-var
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('../assets/logo.jpg', fit: BoxFit.cover),
        elevation: 0.0,
        actions: [
          IconButton(
              icon: Icon(Icons.person_pin_rounded),
              padding: EdgeInsets.symmetric(horizontal: 50.0)),
        ],
      ),
      body: Container(
        child: Wrap(
          children: [
            Container(
                child: Text(
              "Pack your bag and create unbelievable adventures and explore the world",
              style: TextStyle(fontSize: 40, fontFamily: 'RoboSlab'),
              textAlign: TextAlign.left,
            ),
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0))
            Container(
              child
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
