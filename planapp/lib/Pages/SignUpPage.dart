import 'package:create_explore/Components/HeadTitle.dart';
import 'package:create_explore/Wrappers/AppWrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:create_explore/Components/GoogleSignInButton.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppWrapper(
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
