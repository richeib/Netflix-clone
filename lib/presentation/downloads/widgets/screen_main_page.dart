import 'package:flutter/material.dart';

import 'package:netflixrsk/presentation/downloads/games/games.dart';
import 'package:netflixrsk/presentation/downloads/widgets/bottom_nav.dart';
import 'package:netflixrsk/presentation/downloads/widgets/screen_downloads.dart';
import 'package:netflixrsk/presentation/new%20and%20hot/screen_new_and_hot.dart';

import '../home/screen_home.dart';

class ScreeMainPage extends StatelessWidget {
  ScreeMainPage({super.key});

  final _pages = const [
    ScreenHome(),
    GameScreen(),
    ScreenNewAndHot(),
    ScreenDownloads()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
