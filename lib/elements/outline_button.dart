import 'package:flutter/material.dart';

class OutlineButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  const OutlineButton(
      {super.key, required this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 54,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          side: const BorderSide(
              width: 2.0, color: Colors.white, style: BorderStyle.solid),
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
