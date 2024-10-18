import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflixrsk/core/colors/colors.dart';

import '../../../core/colors/constants.dart';

class numberCard extends StatelessWidget {
  const numberCard({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              height: 150,
              width: 40,
            ),
            Container(
              width: 150,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: kRadius20,
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://www.themoviedb.org/t/p/original/8ZWzKXf3qPxXuxApGJ0i4TTuWTl.jpg'),
                ),
              ),
            ),
          ],
        ),
        Positioned(
            left: 13,
            bottom: -30,
            child: BorderedText(
              strokeWidth: 10.0,
              strokeColor: kWhiteColor,
              child: Text(
                '${index + 1}',
                style: TextStyle(
                    fontSize: 130,
                    color: kBlackColor,
                    decoration: TextDecoration.none,
                    decorationColor: Colors.black),
              ),
            ))
      ],
    );
  }
}
