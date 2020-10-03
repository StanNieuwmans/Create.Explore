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
        title: Container(
            child: Image.asset('../assets/logo.jpg', fit: BoxFit.cover),
            padding: EdgeInsets.symmetric(horizontal: 20.0)),
        elevation: 0.0,
        actions: [
          IconButton(
              icon: Icon(Icons.person_pin_rounded),
              padding: EdgeInsets.symmetric(horizontal: 50.0)),
        ],
      ),
      body: Container(
          child: Stack(children: [
        Wrap(
          children: [
            Container(
                child: Text(
                  "Pack your bag and create unbelievable adventures and explore the world",
                  style: TextStyle(fontSize: 40, fontFamily: 'RoboSlab'),
                  textAlign: TextAlign.left,
                ),
                padding:
                    EdgeInsets.symmetric(horizontal: 35.0, vertical: 15.0)),
            Container(
              child: TextFormField(
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  hintText: 'What would you like to explore?',
                  hintStyle: TextStyle(
                    fontSize: 20.0,
                    height: 2.5,
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Icon(Icons.search, color: Colors.grey),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 25.0),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 450.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    width: 350.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    width: 350.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    width: 350.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    width: 350.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red),
                  ),
                ],
              ),
            )
          ],
        ),
      ]),
      color: Colors.white),
    );
  }
}
