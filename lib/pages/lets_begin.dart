import 'package:crypto_collect/elements/gradient_button.dart';
import 'package:crypto_collect/elements/outline_button.dart';
import 'package:crypto_collect/pages/signin.dart';
import 'package:flutter/material.dart';

class LetsBegin extends StatelessWidget {
  const LetsBegin({super.key});

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
                    child: Image.asset("assets/images/lets_begin.png")),
                Text(
                  "Let's begin",
                  style: Theme.of(context).textTheme.displayLarge,
                  textAlign: TextAlign.center,
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 8, left: 32, right: 32, bottom: 36),
                  child: Text(
                    'Join Crypto Wallet to explore these amazing freatures',
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: GradientButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Signin()),
                      );
                    },
                    child: Text(
                      'Login',
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(fontSize: 17),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 48),
                  child: OutlineButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LetsBegin()),
                      );
                    },
                    child: Text(
                      'Create Account',
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
