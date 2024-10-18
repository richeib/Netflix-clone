import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class SeachTextTitle extends StatelessWidget {
  final String title;
  const SeachTextTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ));
  }
}
