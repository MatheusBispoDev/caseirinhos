import 'package:caseirinhos/layout/theme/theme_dark.dart';
import 'package:caseirinhos/layout/theme/theme_light.dart';
import 'package:caseirinhos/pages/contacts_page/contacts_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: themeLight(),
      darkTheme: themeDark(),
      home: ContactPage(),
    );
  }
}
