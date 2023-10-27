import 'dart:ui';

import 'package:crypto_collect/elements/gradient_button.dart';
import 'package:crypto_collect/pages/lets_begin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 52),
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 32, bottom: 32),
                    child: SvgPicture.asset("assets/svgs/bitcoin.svg")),
                Text(
                  'Use Web3 \nTechnology',
                  style: Theme.of(context).textTheme.displayLarge,
                  textAlign: TextAlign.center,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 48),
                  child: Text(
                    'Crypto Wallet, NFT World, Bitcoin Wallet',
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 32),
                  child: GradientButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LetsBegin()),
                      );
                    },
                    child: Text(
                      'Get Started',
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(fontSize: 17),
                    ),
                  ),
                )
              ]),
        ),
      )),
    );
  }
}
