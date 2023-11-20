import 'package:flutter/material.dart';

import '../models/colors.dart';
import '../models/posts.dart';

class UpperPost extends StatelessWidget {
  final int index;

  const UpperPost({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(posts[index].user.imgUrl),
              radius: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                posts[index].user.userName,
                style: const TextStyle(
                  color: titleColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
      ],
    );
  }
}
