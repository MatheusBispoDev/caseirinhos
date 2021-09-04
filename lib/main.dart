import 'package:caseirinhos/app/views/appcontroller.dart';
import 'package:caseirinhos/app/views/layout/theme/theme_dark.dart';
import 'package:caseirinhos/app/views/layout/theme/theme_light.dart';
import 'package:caseirinhos/app/views/pages/contacts_page/contacts_page.dart';
import 'package:caseirinhos/app/views/pages/custom_bottom_nav_bar/custom_bottom_nav_bar.dart';
import 'package:caseirinhos/app/views/pages/finger_print_page/finger_print_page.dart';
import 'package:caseirinhos/app/views/pages/sales_page/sales_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: AppController.instance.isDarkTheme
                ? ThemeMode.dark
                : ThemeMode.light,
            theme: themeLight(),
            darkTheme: themeDark(),
            initialRoute: '/fingerpage',
            routes: {
              '/fingerpage': (context) => FingerPrintPage(),
              '/customnavbar': (context) => CustomBottomNavBar(),
              '/contactspage': (context) => ContactsPage(),
              '/salespage': (context) => SalesPage(),
            },
          );
        });
  }
}
