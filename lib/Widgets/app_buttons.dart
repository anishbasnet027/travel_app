import 'package:flutter/material.dart';
import 'package:travel_app/Widgets/app_text.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  String? text;
  IconData? icon;
  final Color backgroundColors;
  double size;
  final Color borderColors;
  bool? isIcon;

  AppButtons({
    Key? key,
    this.text = "hi",
    this.icon,
    required this.color,
    required this.backgroundColors,
    required this.size,
    required this.borderColors,
    this.isIcon = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.black54),
      child: isIcon == false
          ? Center(
              child: AppText(
                text: text!,
                color: Colors.black,
              ),
            )
          : Center(
              child: Icon(
                icon,
                color: color,
              ),
            ),
    );
  }
}
