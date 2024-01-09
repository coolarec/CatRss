import 'package:flutter/material.dart';

class SettingTitle extends StatelessWidget {
  const SettingTitle({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.left,
      style: const TextStyle(
        color: Colors.blueAccent,
      ),
    );
  }
}
