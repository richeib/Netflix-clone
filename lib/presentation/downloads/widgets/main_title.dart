import 'package:flutter/material.dart';


class MainTitle extends StatelessWidget {
  const MainTitle({super.key, required this.title, required String Title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
