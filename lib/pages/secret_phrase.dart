import 'package:crypto_collect/elements/gradient_button.dart';
import 'package:crypto_collect/elements/gradient_label.dart';
import 'package:flutter/material.dart';

class SecretPhrase extends StatelessWidget {
  const SecretPhrase({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> selectedSecrets = [];
    const List<String> secrets = [
      "Happy",
      "Cloud",
      "News",
      "Add",
      "Sky",
      "Idea",
      "Why",
      "Items",
      "Sad",
      "Rich",
      "Think",
      "Apple"
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        title: Text(
          'Your secret phrase',
          style:
              Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 21),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(children: [
            GridView.builder(
              itemCount: secrets.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisExtent: 40,
                mainAxisSpacing: 30,
                crossAxisSpacing: 30,
              ),
              itemBuilder: (context, index) {
                return GradientLabel(
                    text: secrets[index],
                    onChanged: (isSelected, text) {
                      isSelected
                          ? selectedSecrets.add(text)
                          : selectedSecrets.remove(text);
                    });
              },
            ),
            const Spacer(),
            GradientButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecretPhrase()),
                );
              },
              child: Text(
                'Submit',
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontSize: 17),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
