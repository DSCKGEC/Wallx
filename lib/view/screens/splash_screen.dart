import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'homeview.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Stack(children: [
        Center(
            child: LottieBuilder.asset(
          "assets/lottie/background.json",
        )),
        Center(
            child: Image.asset(
          'assets/logo_wallx.png',
          height: 240,
        )),
      ]),
      nextScreen: HomeView(),
      splashIconSize: MediaQuery.of(context).size.height,
      duration: 3000,
      backgroundColor: const Color(0xFFFFE0B2),
      splashTransition: SplashTransition.slideTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
      animationDuration: const Duration(seconds: 1),
    );
  }
}
