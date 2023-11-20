import 'package:flutter/cupertino.dart';

import 'package:instagram/views/chat.dart';
import 'package:instagram/views/home_view.dart';

import 'camera.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});
  static const String routeName = '/main';

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController _controller = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: const [
        CameraView(),
        HomeView(),
        ChatView(),
      ],
    );
  }
}
