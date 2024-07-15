import 'package:flutter/material.dart';
import 'package:love_ally/utils/color_theme/gradient_widget.dart';
import 'package:love_ally/utils/constants/mediaquery.dart';
import 'package:love_ally/utils/constants/paths.dart';
import 'package:love_ally/utils/constants/sizedbox.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            const CustomSizedBoxHeight(0.2),
            Text(
              'Welcome Back',
              style: TextStyle(
                  fontFamily: CustomFonts.splashMainText,
                  color: Colors.white,
                  fontSize: mediaquerywidth(0.1, context)),
            ),
          ],
        ),
      ),
    );
  }
}
