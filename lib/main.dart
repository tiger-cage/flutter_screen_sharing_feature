import 'package:flutter/material.dart';
import 'package:flutter_screen_sharing_feature/ScreenPage.dart';

void main() {
  runApp(ScreenShare());
}

class ScreenShare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Screen Share',
      home: ScreenPage(),
    );
  }
}
