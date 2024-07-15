import 'dart:async';

import 'package:flutter/material.dart';
import 'package:love_ally/utils/constants/paths.dart';
import 'package:love_ally/utils/navigations/navigations.dart';
import 'package:love_ally/view/login_screen.dart';
import 'package:love_ally/widgets/splash_screen/headings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      PageNavigations().pushRePlacement(const LoginScreen(),
          transitionType: TransitionType.fade);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AppImages.splashImage),
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MainHeading(),
            SubHeading(),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
