



import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key,
    required this.icon,
    required this.title,
  });
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.add,
          color: kWhiteColor,
          size: 30,
        ),
        Text(
          title,
          style: const 
          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}