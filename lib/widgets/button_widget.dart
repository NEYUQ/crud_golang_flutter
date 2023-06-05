import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Color backGroundColor;
  final String text;
  final Color textColor;

  const ButtonWidget({
    super.key,
    required this.backGroundColor,
    required this.text,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.maxFinite,
      height: size.height / 14,
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: BorderRadius.circular(40),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 24,
          color: textColor,
        ),
      ),
    );
  }
}
