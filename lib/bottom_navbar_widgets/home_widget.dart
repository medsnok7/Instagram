import 'package:flutter/cupertino.dart';

import '../views/postlist_view.dart';
import '../views/storylist_view.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      child: Column(
        children: const [
          StoryList(),
          PostList(),
        ],
      ),
    );
  }
}
