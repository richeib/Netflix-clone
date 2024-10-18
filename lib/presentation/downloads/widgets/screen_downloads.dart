import 'dart:math';

import 'package:flutter/material.dart';

import 'package:netflixrsk/core/colors/colors.dart';
import 'package:netflixrsk/core/colors/constants.dart';
import 'package:netflixrsk/presentation/downloads/widgets/app_bar_widget.dart';

final List imageList = [
  "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/rktDFPbfHfUbArZ6OOOKsXcv0Bm.jpg",
  "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/e7AUG4IArMWRw4Ji5pXRB0miRqD.jpg",
  "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/cLqyz8aMgR0veS3U1ESKeIwD0TA.jpg"
];

class ScreenDownloads extends StatelessWidget {
  const ScreenDownloads({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: "Downloads",
          ),
        ),
        body: ListView(
          children: [
            const _SmartDownloads(),
            const Text(
              "Turn on Downloads for you",
              style: TextStyle(
                color: kWhiteColor,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            kheight,
            const Text(
              "We will download movies and shows just for you, so you will always have something to watch",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            kheight,
            SizedBox(
              width: size.width,
              height: size.width,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: size.width * 0.4,
                    backgroundColor: Colors.grey.withOpacity(0.5),
                  ),
                  DownloadImageWidget(
                    imageList: imageList[0],
                    margin: EdgeInsets.only(left: 130),
                    angle: 20,
                  ),
                  DownloadImageWidget(
                    imageList: imageList[1],
                    margin: EdgeInsets.only(right: 130),
                    angle: -20,
                  ),
                  DownloadImageWidget(
                    imageList: imageList[2],
                    margin: EdgeInsets.only(bottom: 40),
                  ),
                ],
              ),
            ),
            MaterialButton(
              color: kButtoncolorBlue,
              onPressed: () {},
              child: const Text(
                "setup",
                style: TextStyle(
                  color: kWhiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            MaterialButton(
              color: kButtonColorWhite,
              onPressed: () {},
              child: const Text(
                "Find more to download",
                style: TextStyle(
                  color: kBlackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ));
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        kwidth,
        Icon(
          Icons.settings,
          color: kWhiteColor,
        ),
        kwidth,
        Text("Smart Downloads")
      ],
    );
  }
}

class DownloadImageWidget extends StatelessWidget {
  const DownloadImageWidget(
      {super.key,
      required this.imageList,
      this.angle = 0,
      required this.margin});

  final String imageList;
  final double angle;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width * 0.4,
        height: size.width * 0.6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage(
              imageList,
            ),
          ),
        ),
      ),
    );
  }
}
