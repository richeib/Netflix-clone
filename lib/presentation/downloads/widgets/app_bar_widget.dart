import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:netflixrsk/core/colors/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        title,
        style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      const Spacer(),
      const Icon(
        Icons.search,
        color: Colors.white,
        size: 40,
      ),
      kwidth,
      Container(
        width: 30,
        height: 30,
        color: Colors.blue,
      ),
      SizedBox(
        width: 10,
      )
    ]);
  }
}
