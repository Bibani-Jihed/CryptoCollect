import 'package:crypto_collect/elements/gradient_button.dart';
import 'package:crypto_collect/elements/inputfield.dart';
import 'package:crypto_collect/pages/verification.dart';
import 'package:flutter/material.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Sign in',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: Text(
                'Enter your registered mail/number',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 24),
              child: InputField(
                padding: 24,
                hint: "62029 48676",
                onChanged: (text) {},
              ),
            ),
            const Spacer(),
            Container(
              margin: const EdgeInsets.only(bottom: 32),
              child: GradientButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Verification()),
                  );
                },
                child: Text(
                  'Continue',
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(fontSize: 17),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
