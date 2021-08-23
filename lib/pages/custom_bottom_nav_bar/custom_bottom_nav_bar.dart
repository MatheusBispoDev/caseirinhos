import 'package:caseirinhos/components/alert_dialog/alert_dialog_exit.dart';
import 'package:caseirinhos/components/customAnimatedBottomBar/custom_animated_bottom_bar.dart';
import 'package:caseirinhos/components/customAnimatedBottomBar/model_custom_animated_bottom_bar.dart';
import 'package:caseirinhos/components/fontAwesomeIcons/font_awesome_icons_custom.dart';
import 'package:caseirinhos/pages/contacts_page/contacts_page.dart';
import 'package:caseirinhos/pages/home_page/home_page.dart';
import 'package:caseirinhos/pages/sales_page/sales_page.dart';
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
    final Color iconColor = Theme.of(context).unselectedWidgetColor;

    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        bottomNavigationBar: CustomAnimatedBottomBar(
          selectedIndex: _currentIndex,
          onItemSelected: (index) => setState(() => _currentIndex = index),
          iconMiddle: FontAwesomeIconCustom(
            FontAwesomeIcons.coffee,
            color: iconColor,
            size: 30,
          ),
          onPressIconMiddle: (){
            setState(() => _currentIndex = 2);
            //Todo: implementar botão para acessar tela de vendas
          },
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
      ),
    );
  }

  Widget getBody() {
    List<Widget> pages = [
      HomePage(),
      ContactsPage(),
      SalesPage(),      
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }

  Future<bool> _onWillPop() async {
    return (await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialogExit(),
        )) ??
        false;
  }
}
