import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButton({Key? key, this.width, this.isResponsive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: width,
        height: 55,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(1)),
        child: Row(
          children: [
            Image.asset("images/button.png"),
          ],
        ),
      ),
    );
  }
}
