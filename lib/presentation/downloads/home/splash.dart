import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

import '../widgets/screen_main_page.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(seconds: 5), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => ScreeMainPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(),
        child: Center(
          child: Lottie.network(
              "https://assets7.lottiefiles.com/private_files/lf30_F6EtR7.json"),
        ),
      ),
    );
  }
}
