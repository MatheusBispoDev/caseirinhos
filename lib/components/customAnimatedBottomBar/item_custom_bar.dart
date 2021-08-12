import 'package:flutter/material.dart';
import 'model_custom_animated_bottom_bar.dart';

class ItemCustomBar extends StatelessWidget {
  final double iconSize;
  final bool isSelected;
  final BottomNavyBarItem item;
  final Color backgroundColor;
  final Duration animationDuration;
  final Color selectedcolor;

  const ItemCustomBar(
      {Key? key,
      required this.item,
      required this.isSelected,
      required this.backgroundColor,
      required this.animationDuration,
      required this.iconSize,
      this.selectedcolor = Colors.orange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            width: 5,
            color:
                isSelected ? selectedcolor.withOpacity(0.8) : backgroundColor,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: NeverScrollableScrollPhysics(),
            child: IconTheme(
                data: IconThemeData(
                  size: iconSize,
                  color: isSelected
                      ? item.activeColor!.withOpacity(1)
                      : item.inactiveColor == null
                          ? item.activeColor
                          : item.inactiveColor,
                ),
                child: item.icon,
              ),
          ),
        ),
      ),
    );
  }
}
