import 'package:flutter/material.dart';

class BottomNavyBarItem {
  BottomNavyBarItem({
    required this.icon,
    this.activeColor = Colors.orange,
    this.textAlign,
    this.inactiveColor = Colors.orange,
  });

  final Widget icon;
  final Color? activeColor;
  final Color? inactiveColor;
  final TextAlign? textAlign;
}