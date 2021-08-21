import 'package:caseirinhos/components/cards/cardContacts/card_contacts.dart';
import 'package:caseirinhos/components/section_divider/section_divider.dart';
import 'package:caseirinhos/components/textfields/textfield_search.dart';
import 'package:caseirinhos/layout/constants/contacts_page_constants.dart';
import 'package:caseirinhos/models/contacts.dart';
import 'package:caseirinhos/pages/contacts_page/contacts_header_page.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final List<Contact> contacts = Contact.getContacts();
  final String dividerText = ContactsPageConstrants.titleAppBarContactsPage;

  @override
  Widget build(BuildContext context) {
    final Color colorPrimay = Theme.of(context).primaryColor;
    final TextStyle? descriptionTextStyle =
        Theme.of(context).textTheme.bodyText1;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            ContactHeadersPage(),
            SizedBox(height: 30),
            TextfieldSearch(
              descriptionTextStyle: descriptionTextStyle,
              onChanged: (String text) {
                // TODO: Adicionar filtro de contatos
                print('Text: $text');
              },
            ),
            SizedBox(height: 30),
            SectionDivider(
              text: dividerText,
              textStyle: descriptionTextStyle,
              colorDivider: colorPrimay,
            ),
            SizedBox(height: 30),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 520,
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (BuildContext context, int index) {
                  return CardContacts(contacts[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
