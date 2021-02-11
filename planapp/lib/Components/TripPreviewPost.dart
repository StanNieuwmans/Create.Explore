import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:planapp/Pages/Post.dart';
import 'package:planapp/RouteAnimation/ScaleRoute.dart';

class TripPreviewPost extends StatelessWidget {
  final String postPreviewImageUrl;
  final String postPreviewLandTitle;
  final String postPreviewLandText;
  final int postPreviewTripMonths;

  TripPreviewPost(
      {Key key,
      this.postPreviewImageUrl,
      this.postPreviewLandTitle,
      this.postPreviewLandText,
      this.postPreviewTripMonths})
      : super(key: key);

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            ScaleRoute(
                page: Post(
                    postLandTitle: postPreviewLandTitle,
                    postLandText: postPreviewLandText,
                    postTripMonths: postPreviewTripMonths,
                    postImage: new NetworkImage(postPreviewImageUrl))));
      },
      child: Container(
        margin: EdgeInsets.only(right: 20.0, left: 35),
        width: MediaQuery.of(context).size.width / 1.8,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: new NetworkImage(postPreviewImageUrl),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
            color: Colors.white),
        child: Column(
          children: [
            Row(children: [
              Expanded(
                child: Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Wrap(
                        children: [
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: Icon(Icons.timer,
                                  color: Colors.white,
                                  size: (MediaQuery.of(context).size.height /
                                      45))),
                          Text(
                            "$postPreviewTripMonths Months's",
                            style: TextStyle(
                              fontSize:
                                  (MediaQuery.of(context).size.height / 65),
                              fontFamily: 'RoboSlab',
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ]),
            Row(
              children: [
                Expanded(
                    child: SizedBox(
                  height: MediaQuery.of(context).size.height / 2.8,
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Wrap(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: SizedBox(
                              width: 200,
                              child: Wrap(children: [
                                Text(
                                  "$postPreviewLandTitle",
                                  style: TextStyle(
                                      fontSize:
                                          (MediaQuery.of(context).size.height /
                                              40),
                                      fontFamily: 'RoboSlab',
                                      color: Colors.white),
                                )
                              ]),
                            ),
                          ),
                        ],
                      )),
                )),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: SizedBox(
                    width: 200,
                    child: Wrap(children: [
                      Text(
                        "$postPreviewLandText",
                        style: TextStyle(
                            fontSize: (MediaQuery.of(context).size.height / 65),
                            fontFamily: 'RoboSlab',
                            color: Colors.white),
                      )
                    ]),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
