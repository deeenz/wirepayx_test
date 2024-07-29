import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final double wifth;
  final double height;
  final String text;
  final Color bgColor;
  final TextStyle textStyle;
  final Function onTap;
  const AppButton(
      {super.key,
      re,
      required this.wifth,
      required this.height,
      required this.text,
      required this.bgColor,
      required this.textStyle,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: () {
        onTap();
      },
      child: Container(
        width: wifth,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(400), color: bgColor),
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
