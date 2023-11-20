import 'package:flutter/material.dart';
import 'package:instagram/views/home_view.dart';

class StoryPic extends StatefulWidget {
  const StoryPic({super.key});
  static const String routeName = 'storypic';
  @override
  State<StoryPic> createState() => _StoryPicState();
}

class _StoryPicState extends State<StoryPic> {
  // final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0, 0.7),
      children: [
        PageView(
          children: [
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.black,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, HomeView.routeName);
                },
                child: const Text(
                  'go back ',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
          ],
        )
      ],
    );
  }
}
