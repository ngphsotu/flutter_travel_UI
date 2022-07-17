import 'package:flutter/material.dart';
import 'package:travel/widgets/app_text.dart';

class AppButtons extends StatelessWidget {
  bool? isIcon;
  double size;
  String? text;
  IconData? icon;
  final Color color;
  final Color borderColor;
  final Color backgroundColor;

  AppButtons({
    Key? key,
    this.text = "hi",
    this.icon,
    this.isIcon = false,
    required this.size,
    required this.color,
    required this.borderColor,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor,
      ),
      child: isIcon == false
          ? Center(
              child: AppText(
              text: text!,
              color: color,
            ))
          : Center(child: Icon(icon, color: color)),
    );
  }
}
