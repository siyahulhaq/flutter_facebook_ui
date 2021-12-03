import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData? icon;
  final Color? backgroundColor;
  final Color iconColor;
  final double iconSize;
  final Function onPressed;
  CircleButton(
      {Key? key,
      required this.icon,
      this.backgroundColor,
      required this.iconColor,
      required this.onPressed,
      required this.iconSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(icon),
        color: iconColor,
        iconSize: iconSize,
        onPressed: onPressed as void Function(),
      ),
    );
  }
}
