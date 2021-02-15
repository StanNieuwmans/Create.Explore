import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddPost extends StatelessWidget {
  final String postImage;
  final String postLandTitle;
  final String postLandText;
  final int postTripMonths;

  AddPost(this.postImage, this.postLandTitle, this.postLandText,
      this.postTripMonths);

  @override
  Widget build(BuildContext context) {
    // Create a CollectionReference called users that references the firestore collection
    CollectionReference users = FirebaseFirestore.instance.collection('Post');

    Future<void> addPost() {
      // Call the user's CollectionReference to add a new user
      return users
          .add({
            'postLandTitle': postLandTitle, // John Doe
            'postLandText': postLandText, // Stokes and Sons
            'postTripMonths': postTripMonths, // 42
            'postImageUrl': postImage // 42
          })
          .then((value) => print("Post Added"))
          .catchError((error) => print("Failed to add Post: $error"));
    }

    return TextButton(
      onPressed: addPost,
      child: Text(
        "Add Post",
      ),
    );
  }
}


