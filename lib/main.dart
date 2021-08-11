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
      themeMode: ThemeMode.light,
      theme: ThemeData(
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.black12,
          selectionColor: Colors.black12,
        ),
      ),
      darkTheme: ThemeData(),
      home: ContactPage(),
    );
  }
}

