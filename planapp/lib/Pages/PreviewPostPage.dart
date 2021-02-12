import 'package:create_explore/Components/HeadTitle.dart';
import 'package:create_explore/Components/SearchField.dart';
import 'package:create_explore/Wrappers/TripPreviewPostWrapper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PreviewPostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: Container(
            child: Image.asset("images/logo.png", fit: BoxFit.cover),
            padding: EdgeInsets.symmetric(horizontal: 20.0)),
        elevation: 0.0,
        actions: [
          CircleAvatar(
            maxRadius: 25,
            backgroundImage: NetworkImage(user.photoURL),
          )
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
          BottomNavigationBarItem(
              icon: Icon(Icons.map_outlined), label: "Map"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_outline), label: "Bookmark"),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz_outlined), label: "More"),
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            Wrap(children: [
              HeadTitle(),
              SearchField(),
              TripPreviewPostWrapper()
            ])
          ],
        ),
      ),
    );
  }
}
