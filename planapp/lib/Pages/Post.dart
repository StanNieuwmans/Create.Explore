import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Post extends StatelessWidget {
  final NetworkImage postImage;
  final String postLandTitle;
  final String postLandText;
  final int postTripMonths;

  Post(
      {Key key,
      this.postImage,
      this.postLandTitle,
      this.postLandText,
      this.postTripMonths})
      : super(key: key);

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
                ),
                child: Column(children: [
                  Row(
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.topRight,
                          child: SizedBox(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: Wrap(
                                children: [
                                  Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 5),
                                      child: Icon(Icons.timer,
                                          color: Colors.white,
                                          size: (MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              45))),
                                  Text(
                                    "$postTripMonths Months's",
                                    style: TextStyle(
                                      fontSize:
                                          (MediaQuery.of(context).size.height /
                                              65),
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
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: SizedBox(
                        height: MediaQuery.of(context).size.height / 1.2,
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
                                        "$postLandTitle",
                                        style: TextStyle(
                                            fontSize: (MediaQuery.of(context)
                                                    .size
                                                    .height /
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
                              "$postLandText",
                              style: TextStyle(
                                  fontSize:
                                      (MediaQuery.of(context).size.height / 65),
                                  fontFamily: 'RoboSlab',
                                  color: Colors.white),
                            )
                          ]),
                        ),
                      ),
                    ],
                  )
                ]))));
  }
}
