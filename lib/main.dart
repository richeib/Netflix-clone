import 'package:flutter/material.dart';
import 'package:netflixrsk/core/colors/colors.dart';
import 'package:netflixrsk/presentation/downloads/home/splash.dart';
import 'package:netflixrsk/presentation/downloads/widgets/screen_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          backgroundColor: Colors.black,
          scaffoldBackgroundColor: backgroundColor,
          fontFamily: 'Varela',
          textTheme: TextTheme(
            bodyText1: TextStyle(color: Colors.white),
            bodyText2: TextStyle(color: Colors.white),
          )),
      home: Splash(),
    );
  }
}
