import 'package:flutter/material.dart';
import 'model_custom_animated_bottom_bar.dart';

class ItemCustomBar extends StatelessWidget {
  final bool isSelected;
  final BottomNavyBarItem item;
  final Duration animationDuration;

  const ItemCustomBar({
    Key? key,
    required this.item,
    required this.isSelected,
    required this.animationDuration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color backgroundColor = Theme.of(context).backgroundColor;
    final Color selectedcolor = Theme.of(context).primaryColor;

    return Semantics(
      container: true,
      selected: isSelected,
      child: AnimatedContainer(
        width: 130,
        height: 100,
        duration: animationDuration,
        decoration: UnderlineTabIndicator(
          insets: EdgeInsets.only(bottom: 80, left: 20, right: 20),
          borderSide: BorderSide(
            width: 6,
            color: isSelected ? selectedcolor : backgroundColor,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: NeverScrollableScrollPhysics(),
            child: IconTheme(
              data: IconThemeData(),
              child: item.icon,
            ),
          ),
        ),
      ),
    );
  }
}
