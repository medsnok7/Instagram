import 'package:flutter/cupertino.dart';

class ReelsWidget extends StatefulWidget {
  const ReelsWidget({super.key});

  @override
  State<ReelsWidget> createState() => _ReelsWidgetState();
}

class _ReelsWidgetState extends State<ReelsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Text('Reels'),
    );
  }
}
