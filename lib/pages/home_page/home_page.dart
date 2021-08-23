import 'package:caseirinhos/models/contacts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final List<Contact> contacts = Contact.getContacts();

  @override
  Widget build(BuildContext context) {
    final Color scaffoldColor = Theme.of(context).scaffoldBackgroundColor;
    final TextStyle? titleAppBarStyle = Theme.of(context).textTheme.headline1;
    final TextStyle? descriptionTextStyle =
        Theme.of(context).textTheme.bodyText1;
    final Color colorPrimay = Theme.of(context).primaryColor;

    return Scaffold(
      backgroundColor: scaffoldColor,
      body: Center(child: Text('Home')),
    );
  }
}
