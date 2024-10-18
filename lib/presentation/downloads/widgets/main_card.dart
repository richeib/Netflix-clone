

import 'package:flutter/material.dart';

import '../../../core/colors/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: kRadius20,image: const DecorationImage(image: NetworkImage('https://www.themoviedb.org/t/p/w600_and_h900_bestv2/7gKI9hpEMcZUQpNgKrkDzJpbnNS.jpg'
        ),
        ),
      ),
      );
  }
}
