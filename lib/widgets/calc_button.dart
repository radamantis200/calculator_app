import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  // properties
  final Color bgColor;
  final bool big;
  final String text;
  final Function onPressed;
  const CalculatorButton({
    super.key,
    this.big = false,
    this.bgColor = const Color(0xff333333),
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final buttonStyle = TextButton.styleFrom(
      backgroundColor: bgColor,
      foregroundColor: Colors.white,
      shape: const StadiumBorder(),
    );

    return Container(
      margin: const EdgeInsets.only(bottom: 10, right: 5, left: 5),
      child: TextButton(
          onPressed: () => onPressed,
          style: buttonStyle,
          // ignore: sized_box_for_whitespace
          child: Container(
            width: big ? 150 : 65,
            height: 65,
            child: Center(
              child: Text(
                text,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
              ),
            ),
          )),
    );
  }
}
