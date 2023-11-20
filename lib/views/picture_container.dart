import 'package:flutter/material.dart';

import '../models/posts.dart';

class PictureContainer extends StatelessWidget {
  final int index;

  const PictureContainer({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          posts[index].postImg,
        ),
        fit: BoxFit.cover,
      )),
    );
  }
}
