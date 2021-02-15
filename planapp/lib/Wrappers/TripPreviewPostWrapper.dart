import 'dart:collection';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:create_explore/Components/TripPreviewPost.dart';

class TripPreviewPostWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 25.0),
        height: MediaQuery.of(context).size.height / 2,
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height / 1.7,
        ),
        child: GetPost());
  }
}

class GetPost extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    CollectionReference posts = FirebaseFirestore.instance
        .collection('Post')
        .doc(user.uid)
        .collection("Posts");

    return FutureBuilder<QuerySnapshot>(
      future: posts.get(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          List<TripPreviewPost> test = new List<TripPreviewPost>();
          snapshot.data.docs.forEach((post) {
            Map<String, dynamic> data = post.data();

            test.add(TripPreviewPost(
                postPreviewImageUrl: data["postPreviewImageUrl"],
                postPreviewLandText: data["postPreviewLandText"],
                postPreviewLandTitle: data["postPreviewLandTitle"],
                postPreviewTripMonths: data["postPreviewTripMonths"]));
          });

          return ListView(scrollDirection: Axis.horizontal, children: test);
          // return TripPreviewPost(
          //     // postPreviewImageUrl: _postPreviewImageUrl,
          //     postPreviewLandText: _posts,
          //     // postPreviewLandTitle: _postPreviewLandTitle,
          //     // postPreviewTripMonths: _postPreviewTripMonths
          //     );
        }

        return Text("loading");
      },
    );
  }
}
