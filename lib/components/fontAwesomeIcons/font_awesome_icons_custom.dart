import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FontAwesomeIconCustom extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color color;
  final String? semanticLabel;
  final TextDirection? textDirection;

  const FontAwesomeIconCustom(this.icon, {Key? key, required this.size, required this.color, this.semanticLabel, this.textDirection}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FaIcon(icon,
        color: color,
        size: size,
        semanticLabel: semanticLabel,
        textDirection: textDirection,
      ),
    );
  }
}
