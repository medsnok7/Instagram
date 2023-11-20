import 'package:flutter/material.dart';

import 'package:instagram/models/posts.dart';
import 'package:instagram/views/picture_container.dart';
import 'package:instagram/views/post_bio.dart';
import 'package:instagram/views/upper_post.dart';

class PostList extends StatelessWidget {
  const PostList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.63,
      child: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: const EdgeInsets.only(top: 25),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: UpperPost(index: index),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  PictureContainer(index: index),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8, left: 10.0, right: 10, bottom: 8),
                    child: PostBio(
                      index: index,
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
