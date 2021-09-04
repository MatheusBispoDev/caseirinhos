
import 'package:caseirinhos/app/views/components/fontAwesomeIcons/font_awesome_icons_custom.dart';
import 'package:flutter/material.dart';

class CardIconButton extends StatelessWidget {
  final IconData icon;
  final Function() onTap;

  CardIconButton({Key? key, required this.icon, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color colorBackgroundIcon = Theme.of(context).accentColor;
    final Color colorIcon = Theme.of(context).primaryColor;

    return GestureDetector(
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          color: colorBackgroundIcon,
        ),
        child: FontAwesomeIconCustom(icon, color: colorIcon, size: 25),
      ),
      onTap: onTap,
    );
  }
}
