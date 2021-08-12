import 'package:caseirinhos/components/cards/cardContacts/card_contacts.dart';
import 'package:caseirinhos/components/customAnimatedBottomBar/custom_animated_bottom_bar.dart';
import 'package:caseirinhos/components/customAnimatedBottomBar/model_custom_animated_bottom_bar.dart';
import 'package:caseirinhos/components/section_divider/section_divider.dart';
import 'package:caseirinhos/components/textfields/textfield_search.dart';
import 'package:caseirinhos/models/contacts.dart';
import 'package:caseirinhos/pages/contacts_page/contacts_header_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:caseirinhos/components/fontAwesomeIcons/font_awesome_icons_custom.dart';

final TextStyle descriptionTextStyle = GoogleFonts.workSans(fontSize: 16);

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final Color colorPrimay = Colors.orange;
  final TextStyle titleTextStyle = GoogleFonts.workSans(fontSize: 32);
  final TextStyle descriptionTextStyle = GoogleFonts.workSans(fontSize: 16);
  final TextStyle sectionTextStyle = GoogleFonts.workSans(fontSize: 12);
  final List<Contact> contacts = Contact.getContacts();

  int selectedItemPosition = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomAnimatedBottomBar(
        backgroundColor: Colors.white,
        selectedIndex: selectedItemPosition,
        onItemSelected: (index) => setState(() => selectedItemPosition = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: FontAwesomeIconCustom(
              FontAwesomeIcons.home,
              size: 26,
              color: Colors.black,
            ),
          ),
          BottomNavyBarItem(
            icon: FontAwesomeIconCustom(
              FontAwesomeIcons.userFriends,
              size: 26,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            ContactHeadersPage(),
            SizedBox(height: 30),
            TextfieldSearch(
              cursosColor: colorPrimay,
              descriptionTextStyle: descriptionTextStyle,
              onChanged: (String text) {
                // TODO: Adicionar filtro de contatos
                print('Text: $text');
              },
            ),
            SizedBox(height: 30),
            SectionDivider(
              text: 'Recentes',
              textStyle: descriptionTextStyle,
              colorDivider: colorPrimay,
            ),
            SizedBox(height: 30),
            Container(
              color: Colors.white,
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





