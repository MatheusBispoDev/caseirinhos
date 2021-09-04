
import 'package:caseirinhos/app/views/components/customAnimatedBottomBar/item_custom_bar.dart';
import 'package:flutter/material.dart';
import 'model_custom_animated_bottom_bar.dart';

class CustomAnimatedBottomBar extends StatelessWidget {
  CustomAnimatedBottomBar({
    Key? key,
    this.selectedIndex = 0,
    this.containerHeight = 56,
    this.animationDuration = const Duration(milliseconds: 200),
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
    required this.iconMiddle,
    required this.onPressIconMiddle,
    required this.items,
    required this.onItemSelected,
  })  : assert(items.length >= 2 && items.length <= 5),
        super(key: key);

  final int selectedIndex;
  final Duration animationDuration;
  final List<BottomNavyBarItem> items;
  final ValueChanged<int> onItemSelected;
  final MainAxisAlignment mainAxisAlignment;
  final double containerHeight;
  final Widget iconMiddle;
  final Function() onPressIconMiddle;

  @override
  Widget build(BuildContext context) {
    final Color iconBackgoundColor = Theme.of(context).primaryColor;

    return Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          height: 120,
          child: SafeArea(
            child: Container(
              width: double.infinity,
              height: containerHeight,
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: mainAxisAlignment,
                children: items.map((item) {
                  var index = items.indexOf(item);
                  return GestureDetector(
                    onTap: () => onItemSelected(index),
                    child: ItemCustomBar(
                      item: item,
                      isSelected: index == selectedIndex,
                      animationDuration: animationDuration,
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: GestureDetector(
                child: ClipRect(
                  child: AnimatedContainer(
                    duration: Duration(microseconds: 500),
                    decoration: BoxDecoration(
                      color: iconBackgoundColor,
                      shape: BoxShape.circle,
                    ),
                    child: iconMiddle,
                  ),
                ),
                onTap: onPressIconMiddle,
              ),
          ),
        ),
      ],
    );
  }
}
