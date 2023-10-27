import 'package:crypto_collect/elements/gradient_button.dart';
import 'package:crypto_collect/elements/inputfield.dart';
import 'package:crypto_collect/pages/secret_phrase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Verification',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: Text(
                'Enter your verification code that we send you through your mail/number',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 60,
                  height: 80,
                  margin: const EdgeInsets.only(top: 24, bottom: 32),
                  child: InputField(
                    textInputType: TextInputType.number,
                    alignCenter: true,
                    maxLength: 1,
                    padding: 0,
                    hint: "0",
                    onChanged: (text) {
                      if (text.isNotEmpty) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                ),
                Container(
                  width: 60,
                  height: 80,
                  margin: const EdgeInsets.only(top: 24, bottom: 32),
                  child: InputField(
                    textInputType: TextInputType.number,
                    alignCenter: true,
                    maxLength: 1,
                    padding: 0,
                    hint: "0",
                    onChanged: (text) {
                      if (text.isNotEmpty) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                ),
                Container(
                  width: 60,
                  height: 80,
                  margin: const EdgeInsets.only(top: 24, bottom: 32),
                  child: InputField(
                    textInputType: TextInputType.number,
                    alignCenter: true,
                    maxLength: 1,
                    padding: 0,
                    hint: "0",
                    onChanged: (text) {
                      if (text.isNotEmpty) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                ),
                Container(
                  width: 60,
                  height: 80,
                  margin: const EdgeInsets.only(top: 24, bottom: 32),
                  child: InputField(
                    textInputType: TextInputType.number,
                    alignCenter: true,
                    maxLength: 1,
                    padding: 0,
                    hint: "0",
                    onChanged: (text) {
                      if (text.isNotEmpty) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                ),
                Container(
                  width: 60,
                  height: 80,
                  margin: const EdgeInsets.only(top: 24, bottom: 32),
                  child: InputField(
                      textInputType: TextInputType.number,
                      alignCenter: true,
                      maxLength: 1,
                      padding: 0,
                      hint: "0",
                      onChanged: (text) {
                        if (text.isNotEmpty) {
                          FocusScope.of(context).nextFocus();
                        }
                      }),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 16),
                  child: Text(
                    '+91 6202948676',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontSize: 17),
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: SvgPicture.asset('assets/svgs/pen.svg'),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 32),
              child: GradientButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecretPhrase()),
                  );
                },
                child: Text(
                  'Verify',
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(fontSize: 17),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 16),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'Resend Code ',
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          fontSize: 17, color: const Color(0xff7878FA)),
                    ),
                    TextSpan(
                      text: '1:24',
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(fontSize: 17),
                    ),
                  ]),
                )),
          ]),
        ),
      ),
    );
  }
}
