import 'package:flutter/material.dart';

class CameraView extends StatefulWidget {
  const CameraView({super.key});
  static const String routeName = "/camera";

  @override
  State<CameraView> createState() => _CameraViewState();
}

class _CameraViewState extends State<CameraView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }
}
