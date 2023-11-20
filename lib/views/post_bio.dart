import 'package:flutter/material.dart';

import '../models/colors.dart';
import '../models/posts.dart';

class PostBio extends StatelessWidget {
  final int index;

  const PostBio({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite),
                ),
                Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(3.1432),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.mode_comment_outlined),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.share),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.bookmark),
            ),
          ],
        ),
        Row(
          children: [
            const Text('Liked by '),
            Text(
              posts[index].likedUser.userName,
              style: const TextStyle(
                color: titleColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(' and'),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'others.',
                  style: TextStyle(
                    color: titleColor,
                    fontWeight: FontWeight.bold,
                  ),
                ))
          ],
        ),
        RichText(
            text: TextSpan(
                style: const TextStyle(
                  color: Colors.black,
                ),
                children: [
              TextSpan(
                  text: posts[index].user.userName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              TextSpan(text: '  ${posts[index].description}'),
            ]))
      ],
    );
  }
}
