import 'package:create_explore/Components/HeadTitle.dart';
import 'package:create_explore/Wrappers/AppWrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddPostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppWrapper(
        body: Container(
            child: Stack(children: [
      Wrap(children: [
        HeadTitle(),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Form(
            child: Wrap(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: const InputDecoration(
                                hintText: "postPreviewImageUrl"),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: const InputDecoration(
                                hintText: "postPreviewLandText"),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: const InputDecoration(
                                hintText: "postPreviewLandTitle"),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: const InputDecoration(
                                hintText: "postPreviewTripMonths"),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: const InputDecoration(
                                hintText: "postPreviewTripMonths"),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ]),
    ])));
  }
}
