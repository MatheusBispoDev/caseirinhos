import 'package:caseirinhos/app/views/blocs/bottom_nav_bloc/bottom_nav_bloc.dart';
import 'package:caseirinhos/app/views/blocs/bottom_nav_bloc/bottom_nav_state.dart';
import 'package:caseirinhos/app/views/layout/components/alert_dialog/alert_dialog_exit.dart';
import 'package:caseirinhos/app/views/layout/components/customAnimatedBottomBar/custom_animated_bottom_bar.dart';
import 'package:caseirinhos/app/views/layout/components/customAnimatedBottomBar/model_custom_animated_bottom_bar.dart';
import 'package:caseirinhos/app/views/layout/components/fontAwesomeIcons/font_awesome_icons_custom.dart';
import 'package:caseirinhos/app/views/pages/contacts_page/contacts_page.dart';
import 'package:caseirinhos/app/views/pages/home_page/home_page.dart';
import 'package:caseirinhos/app/views/pages/sales_page/sales_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  BottomNavBloc bottomNavBloc = BottomNavBloc();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        bottomNavigationBar: BlocBuilder<BottomNavBloc, BottomNavState>(
          bloc: bottomNavBloc,
          builder: (context, state) {
            if (state is BottomNavSalesState) {
              return _customBarNavigation(bottomNavBloc, 2);
            }
            if (state is BottomNavContactsState) {
              return _customBarNavigation(bottomNavBloc, 1);
            }
            return _customBarNavigation(bottomNavBloc, 0);
          },
        ),
        body: BlocBuilder<BottomNavBloc, BottomNavState>(
          bloc: bottomNavBloc,
          builder: (context, state) {
            if (state is BottomNavHomeState) {
              return HomePage();
            }
            if (state is BottomNavSalesState) {
              return SalesPage();
            }
            if (state is BottomNavContactsState) {
              return ContactsPage();
            }
            return Container();
          },
        ),
      ),
    );
  }

  Future<bool> _onWillPop() async {
    return (await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialogExit(),
        )) ??
        false;
  }

  _customBarNavigation(BottomNavBloc bottomNavBloc, int currentIndex) {
    final Color iconColor = Theme.of(context).unselectedWidgetColor;

    return CustomAnimatedBottomBar(
      selectedIndex: currentIndex,
      onItemSelected: (index) {
        bottomNavBloc.add(index);
      },
      iconMiddle: FontAwesomeIconCustom(
        FontAwesomeIcons.coffee,
        color: iconColor,
        size: 30,
      ),
      onPressIconMiddle: () {
        bottomNavBloc.add(2);
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
    );
  }
}
