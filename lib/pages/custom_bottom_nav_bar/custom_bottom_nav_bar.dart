import 'package:caseirinhos/components/customAnimatedBottomBar/custom_animated_bottom_bar.dart';
import 'package:caseirinhos/components/customAnimatedBottomBar/model_custom_animated_bottom_bar.dart';
import 'package:caseirinhos/components/fontAwesomeIcons/font_awesome_icons_custom.dart';
import 'package:caseirinhos/pages/contacts_page/contacts_page.dart';
import 'package:caseirinhos/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomAnimatedBottomBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: FontAwesomeIconCustom(
              FontAwesomeIcons.home,
              size: 26,
            ),
          ),
          BottomNavyBarItem(
            icon: FontAwesomeIconCustom(
              FontAwesomeIcons.userFriends,
              size: 26,
            ),
          ),
        ],
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    List<Widget> pages = [
      HomePage(),
      ContactPage(),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }
}
