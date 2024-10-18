import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:netflixrsk/core/colors/colors.dart';
import 'package:netflixrsk/core/colors/constants.dart';
import 'package:netflixrsk/presentation/downloads/widgets/Background_card.dart';

import '../widgets/custom_button_widget.dart';
import '../widgets/main_card.dart';
import '../widgets/main_title.dart';
import '../widgets/main_title_card.dart';
import 'number_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (BuildContext context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (Notification) {
              final ScrollDirection direction = Notification.direction;

              print(direction);
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            },
            child: Stack(children: [
              ListView(
                children: [
                  BackgroundCard(),
                  MainTitleCard(
                    title: "Released in the past year",
                  ),
                  kheight,
                  MainTitleCard(
                    title: "Trending now",
                  ),
                  kheight,
                  MainTitleCard(
                    title: "Mobile GAmes",
                  ),
                  kheight,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MainTitle(
                        title: 'Top 10 Tv Shows In India Today',
                        Title: '',
                      ),
                      kheight,
                      LimitedBox(
                        maxHeight: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: List.generate(
                            10,
                            (index) => numberCard(
                              index: index,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  kheight,
                  MainTitleCard(
                    title: "Action Movies",
                  ),
                ],
              ),
              scrollNotifier.value == true
                  ? Container(
                      width: double.infinity,
                      height: 60,
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                "https://www.freepnglogos.com/uploads/netflix-logo-circle-png-5.png",
                                width: 70,
                                height: 40,
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
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 50),
                              Text(
                                "TV Shows",
                                style: kHomeTitleText,
                              ),
                              SizedBox(width: 50),
                              Text(
                                "Movies",
                                style: kHomeTitleText,
                              ),
                              SizedBox(width: 50),
                              Text(
                                "Categories",
                                style: kHomeTitleText,
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  : kheight,
            ]),
          );
        },
      ),
    );
  }
}
