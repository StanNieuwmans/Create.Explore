import 'package:create_explore/Components/HeadTitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:create_explore/Components/GoogleSignInButton.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
            child: Image.asset("images/logo.png", fit: BoxFit.cover),
            padding: EdgeInsets.symmetric(horizontal: 20.0)),
        elevation: 0.0,
      ),
      body: Container(
        child: Stack(children: [
          Wrap(children: [
            HeadTitle(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 1.7,
                  child: GoogleSignInButton(),
                )
              ],
            )
          ])
        ]),
      ),
    );
  }
}
