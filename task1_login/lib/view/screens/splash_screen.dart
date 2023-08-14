import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task1_login/view/screens/choose_login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const ChooseLoginMethod(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SvgPicture.asset(
              'assets/images/background_splash.svg',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: size.height * 0.3),
              child: Center(
                child: SvgPicture.asset(
                  'assets/images/title.svg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
