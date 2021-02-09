import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TripPreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      width: MediaQuery.of(context).size.width / 1.8,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://images.unsplash.com/photo-1612728303797-aad63f9dee79?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"),
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
                                size:
                                    (MediaQuery.of(context).size.height / 45))),
                        Text(
                          "10 Months's",
                          style: TextStyle(
                            fontSize: (MediaQuery.of(context).size.height / 65),
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
                height: MediaQuery.of(context).size.height / 2.5,
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
                                "Iceland",
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
                        Container(
                          padding: EdgeInsets.all(10),
                          child: SizedBox(
                            width: 200,
                            child: Wrap(children: [
                              Text(
                                "10 Places planned in your trip",
                                style: TextStyle(
                                    fontSize:
                                        (MediaQuery.of(context).size.height /
                                            65),
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
          )
        ],
      ),
    );
  }
}
