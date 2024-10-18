import 'package:flutter/material.dart';
import 'package:netflixrsk/core/colors/constants.dart';

import '../../../core/colors/colors.dart';
import 'custom_button_widget.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
            image: DecorationImage(image: NetworkImage(kmainImage)),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CustomButtom(
                  title: "My List",
                  icon: Icons.add,
                ),
                _PlayButton(),
                const CustomButtom(icon: Icons.info, title: 'Info')
              ],
            ),
          ),
        ),
      ],
    );
  }
   TextButton _PlayButton() {
    return TextButton.icon(
      onPressed: () {},
      style:
          ButtonStyle(backgroundColor: MaterialStateProperty.all(kWhiteColor)),
      icon: const Icon(
        Icons.play_arrow,
        size: 25,
        color: kBlackColor,
      ),
      label: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          'Play',
          style: TextStyle(
            fontSize: 20,
            color: kBlackColor,
          ),
        ),
      ),
    );
  }

}
