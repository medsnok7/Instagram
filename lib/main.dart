import 'package:flutter/material.dart';
import 'package:instagram/views/camera.dart';

import 'package:instagram/views/chat.dart';
import 'package:instagram/views/home_view.dart';

import 'package:instagram/views/onboarding.dart';
import 'package:instagram/views/story_pic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Onboarding.routeName,
      routes: {
        Onboarding.routeName: (context) => const Onboarding(),
        ChatView.routeName: (context) => const ChatView(),
        HomeView.routeName: (context) => const HomeView(),
        CameraView.routeName: (context) => const CameraView(),
        StoryPic.routeName: (context) => const StoryPic(),
      },
    );
  }
}
