import 'package:flutter/material.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});
  static const String routeName = '/chat';

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
    );
  }
}
