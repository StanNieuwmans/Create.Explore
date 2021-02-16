import 'package:create_explore/Components/HeadTitle.dart';
import 'package:create_explore/Components/SearchField.dart';
import 'package:create_explore/Wrappers/AppWrapper.dart';
import 'package:create_explore/Wrappers/TripPreviewPostWrapper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PreviewPostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppWrapper(
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
