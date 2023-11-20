import 'package:flutter/material.dart';

import '../models/colors.dart';

class CustomizedAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomizedAppbar({
    Key? key,
  }) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: Transform(
        // you can forcefully translate values left side using Transform
        transform: Matrix4.translationValues(-40.0, 0.0, 0.0),
        child: const Text(
          "Instagram",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      elevation: 0,
      backgroundColor: themeColor,
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add_box_outlined,
            color: titleColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite,
            color: titleColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.messenger,
            color: titleColor,
          ),
        ),
      ],
    );
  }
}
