import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppWrapper extends StatelessWidget {
  final Widget body;

  const AppWrapper({Key key, this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: Container(
            child: Image.network(
                "https://images.unsplash.com/photo-1613258488197-04297077fe10?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
                fit: BoxFit.cover),
            padding: EdgeInsets.symmetric(horizontal: 20.0)),
        elevation: 0.0,
        actions: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: CircleAvatar(
              maxRadius: 20,
              backgroundImage: NetworkImage(user.photoURL),
            ),
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
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.camera), label: "Add"),
          BottomNavigationBarItem(icon: Icon(Icons.map_outlined), label: "Map"),
        ],
      ),
      body: body,
    );
  }
}
