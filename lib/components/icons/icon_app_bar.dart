import 'package:caseirinhos/components/fontAwesomeIcons/font_awesome_icons_custom.dart';
import 'package:flutter/material.dart';

class IconAppBar extends StatelessWidget {
  IconAppBar(
      {Key? key,
      required this.icon,
      required this.padding,
      this.size = 30,
      required this.onTap})
      : super(key: key);
  final IconData icon;
  final EdgeInsetsGeometry padding;
  final double? size;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    final Color colorIcon = Theme.of(context).unselectedWidgetColor;

    return Padding(
      padding: padding,
      child: GestureDetector(
        child: FontAwesomeIconCustom(
          icon,
          color: colorIcon,
          size: size,
        ),
        onTap: onTap,
      ),
    );
  }
}