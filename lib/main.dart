import 'package:caseirinhos/layout/theme/theme_dark.dart';
import 'package:caseirinhos/layout/theme/theme_light.dart';
import 'package:caseirinhos/pages/contacts_page/contacts_page.dart';
import 'package:caseirinhos/pages/custom_bottom_nav_bar/custom_bottom_nav_bar.dart';
import 'package:caseirinhos/pages/finger_print_page/finger_print_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: themeLight(),
      darkTheme: themeDark(),
      initialRoute: '/fingerpage',
      routes: {
        '/fingerpage': (context) => FingerPrintPage(),
        '/customnavbar': (context) => CustomBottomNavBar(),
        '/contactspage': (context) => ContactsPage(),
      },
    );
  }
}
