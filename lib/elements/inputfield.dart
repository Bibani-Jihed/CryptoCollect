import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final Function(String) onChanged;
  final double padding;
  final bool? alignCenter;
  final int? maxLength;
  final String hint;
  final TextInputType? textInputType;
  const InputField(
      {super.key,
      required this.onChanged,
      required this.hint,
      required this.padding,
      this.alignCenter,
      this.maxLength,
      this.textInputType});

  @override
  Widget build(BuildContext context) {
    return TextField(
        textAlign: alignCenter == true ? TextAlign.center : TextAlign.start,
        onChanged: onChanged,
        maxLength: 1,
        onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
        keyboardType: textInputType,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 24),
        decoration: InputDecoration(
          counterText: "",
          hintText: hint,
          hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 24, color: const Color.fromARGB(177, 88, 88, 88)),
          focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color(0xff9D62D9), width: 2.0),
              borderRadius: BorderRadius.circular(12)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white, width: 2.0),
              borderRadius: BorderRadius.circular(12)),
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(12)),
        ));
  }
}
