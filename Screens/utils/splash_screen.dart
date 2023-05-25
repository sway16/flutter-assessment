import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/auth/sign_in_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
           duration: 3000,
           splash:Image.asset('assets/images/splashscreen.gif',fit: BoxFit.cover,),
           nextScreen: SignIn(),
           splashTransition: SplashTransition.fadeTransition,
           splashIconSize: 800,
           backgroundColor: Colors.blue),
      );
  }
}
