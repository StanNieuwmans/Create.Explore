import 'package:create_explore/Components/HeadTitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:create_explore/Components/GoogleSignInButton.dart';


class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Wrap(children: [
            Row(
              children: [
                HeadTitle(),
              ],
            ),
            Row(
              children: [
                GoogleSignInButton(),
              ],
            ),
          ]),
        ],
      ),
    );
  }
}
