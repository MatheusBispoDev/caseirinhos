import 'package:caseirinhos/components/customAnimatedBottomBar/item_custom_bar.dart';
import 'package:caseirinhos/components/fontAwesomeIcons/font_awesome_icons_custom.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'model_custom_animated_bottom_bar.dart';

class CustomAnimatedBottomBar extends StatelessWidget {
  CustomAnimatedBottomBar({
    Key? key,
    this.selectedIndex = 0,
    this.iconSize = 24,
    this.backgroundColor,
    this.containerHeight = 56,
    this.animationDuration = const Duration(milliseconds: 200),
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
    required this.items,
    required this.onItemSelected,
  })  : assert(items.length >= 2 && items.length <= 5),
        super(key: key);

  final int selectedIndex;
  final double iconSize;
  final Color? backgroundColor;
  final Duration animationDuration;
  final List<BottomNavyBarItem> items;
  final ValueChanged<int> onItemSelected;
  final MainAxisAlignment mainAxisAlignment;
  final double containerHeight;

  @override
  Widget build(BuildContext context) {
    final bgColor = backgroundColor ?? Theme.of(context).bottomAppBarColor;

    return Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          height: 120,
          decoration: BoxDecoration(
            color: bgColor,
          ),
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
                        iconSize: iconSize,
                        isSelected: index == selectedIndex,
                        backgroundColor: bgColor,
                        animationDuration: animationDuration,
                      ));
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
                    color: Colors.orange.shade400,
                    shape: BoxShape.circle,
                  ),
                  child: FontAwesomeIconCustom(
                    FontAwesomeIcons.coffee,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
              onTap: (){
                // TODO: Adicionar funcionadalide para ir para tela de vendas
              },
            ),
          ),
        ),
      ],
    );
  }
}
