import 'package:crypto_collect/pages/getstarted.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const GetStarted()),
      );
    });
    return Scaffold(
      body: Center(
        child: SvgPicture.asset("assets/svgs/crypto_collect.svg"),
      ),
    );
  }
}
