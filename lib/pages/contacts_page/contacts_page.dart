import 'package:caseirinhos/components/cards/cardContacts/card_contacts.dart';
import 'package:caseirinhos/components/customAnimatedBottomBar/custom_animated_bottom_bar.dart';
import 'package:caseirinhos/components/customAnimatedBottomBar/model_custom_animated_bottom_bar.dart';
import 'package:caseirinhos/components/section_divider/section_divider.dart';
import 'package:caseirinhos/components/textfields/textfield_search.dart';
import 'package:caseirinhos/layout/constants/contacts_page_constants.dart';
import 'package:caseirinhos/models/contacts.dart';
import 'package:caseirinhos/pages/contacts_page/contacts_header_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:caseirinhos/components/fontAwesomeIcons/font_awesome_icons_custom.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final List<Contact> contacts = Contact.getContacts();
  final String dividerText = ContactsPageConstrants.titleAppBarContactsPage;
  int selectedItemPosition = 0;

  @override
  Widget build(BuildContext context) {
    final Color colorPrimay = Theme.of(context).primaryColor;
    final TextStyle? descriptionTextStyle =
        Theme.of(context).textTheme.bodyText1;
    final Color iconNavBarColor = Theme.of(context).indicatorColor;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      bottomNavigationBar: CustomAnimatedBottomBar(
        selectedIndex: selectedItemPosition,
        onItemSelected: (index) => setState(() => selectedItemPosition = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: FontAwesomeIconCustom(
              FontAwesomeIcons.home,
              size: 26,
              color: iconNavBarColor,
            ),
          ),
          BottomNavyBarItem(
            icon: FontAwesomeIconCustom(
              FontAwesomeIcons.userFriends,
              size: 26,
              color: iconNavBarColor,
            ),
          ),
        ],
      ),
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
