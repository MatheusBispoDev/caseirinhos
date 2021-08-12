import 'package:flutter/material.dart';

class BottomNavyBarItem {
  BottomNavyBarItem({
    required this.icon,
    this.activeColor = Colors.black,
    this.inactiveColor = Colors.black,
  });

  final Widget icon;
  final Color? activeColor;
  final Color? inactiveColor;
}