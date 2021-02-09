import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Post extends StatelessWidget {
  final NetworkImage postImage;
  final String postLandTitle;
  final String postLandText;
  final int postTripMonths;

  Post({Key key, this.postImage, this.postLandTitle, this.postLandText, this.postTripMonths}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
          decoration: BoxDecoration(
        image: DecorationImage(
            image: postImage,
            fit: BoxFit.cover,
            alignment: Alignment.center),
      )),
    ));
  }
}
