import 'package:caseirinhos/components/customAnimatedBottomBar/custom_animated_bottom_bar.dart';
import 'package:caseirinhos/components/customAnimatedBottomBar/model_custom_animated_bottom_bar.dart';
import 'package:caseirinhos/components/fontAwesomeIcons/font_awesome_icons_custom.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({ Key? key }) : super(key: key);

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomAnimatedBottomBar(
        backgroundColor: Colors.white,
        selectedIndex: _currentIndex,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: FontAwesomeIconCustom(
              FontAwesomeIcons.home,
              size: 26,
              color: Colors.black,
            ),
          ),
          BottomNavyBarItem(
            icon: FontAwesomeIconCustom(
              FontAwesomeIcons.userFriends,
              size: 26,
              color: Colors.black,
            ),
          ),
        ],),
        body: Container(),
      );
  }

  Widget getBody() {
    List<Widget> pages = [
      Container(
        alignment: Alignment.center,
        child: Text("Home",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      Container(
        alignment: Alignment.center,
        child: Text("Users",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      Container(
        alignment: Alignment.center,
        child: Text("Messages",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      Container(
        alignment: Alignment.center,
        child: Text("Settings",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }

}