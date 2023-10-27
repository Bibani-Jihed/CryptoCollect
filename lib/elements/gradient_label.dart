import 'package:flutter/material.dart';

class GradientLabel extends StatefulWidget {
  final String text;
  final Function(bool, String) onChanged;
  const GradientLabel({
    super.key,
    required this.text,
    required this.onChanged,
  });

  @override
  State<GradientLabel> createState() => _GradientLabelState();
}

class _GradientLabelState extends State<GradientLabel> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
          widget.onChanged(isSelected, widget.text);
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        decoration: BoxDecoration(
          gradient: isSelected
              ? const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xff9D62D9), Color(0xff6262D9)])
              : null,
          borderRadius: BorderRadius.circular(4),
          color: const Color(0xff333333),
        ),
        child: Text(
          widget.text,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
