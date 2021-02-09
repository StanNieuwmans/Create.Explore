import 'package:flutter/material.dart';
import 'package:planapp/Components/HeadTitle.dart';
import 'package:planapp/Components/SearchField.dart';
import 'package:planapp/Wrappers/TripPreviewWrapper.dart';

void main() => runApp(PlanApp());

// #docregion MyApp
class PlanApp extends StatelessWidget {
  // #docregion build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create. Explore.',
      theme: ThemeData(
          primaryColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
          canvasColor: Colors.white),
      debugShowCheckedModeBanner: false,
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
            child: Image.asset(
                "images/logo.png",
                fit: BoxFit.cover),
            padding: EdgeInsets.symmetric(horizontal: 20.0)),
        elevation: 0.0,
        actions: [
          //// Add google login icon here
          IconButton(
              icon: Icon(Icons.person_pin_rounded),
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              color: Colors.white),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        iconSize: MediaQuery.of(context).size.height / 30,
        currentIndex: 0,
        elevation: 0.0,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.map_outlined), label: "Map"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_outline), label: "Bookmark"),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz_outlined), label: "More"),
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            Wrap(children: [HeadTitle(), SearchField(), TripPreviewWrapper()])
          ],
        ),
      ),
    );
  }
}
