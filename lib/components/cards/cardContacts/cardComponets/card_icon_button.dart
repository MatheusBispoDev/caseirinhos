import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardIconButton extends StatelessWidget {
  final Color colorBackgroundIcon = Colors.orange.shade50;
  final Color colorIcon = Colors.orange;
  final IconData icon;
  final Function() onTap;

  CardIconButton({Key? key, required this.icon, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          color: colorBackgroundIcon,
        ),
        child: Center(
          child: FaIcon(
            icon,
            color: colorIcon,
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}