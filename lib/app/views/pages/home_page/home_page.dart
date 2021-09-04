
import 'package:caseirinhos/app/models/contacts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final List<Contact> contacts = Contact.getContacts();

  @override
  Widget build(BuildContext context) {
    final Color scaffoldColor = Theme.of(context).scaffoldBackgroundColor;

    return Scaffold(
      backgroundColor: scaffoldColor,
      body: Center(child: Text('Home')),
    );
  }
}
