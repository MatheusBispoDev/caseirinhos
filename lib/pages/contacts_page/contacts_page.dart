import 'package:caseirinhos/components/cardContacts/card_contacts.dart';
import 'package:caseirinhos/components/section_divider.dart';
import 'package:caseirinhos/components/textfield_search.dart';
import 'package:caseirinhos/models/contacts.dart';
import 'package:caseirinhos/pages/contacts_page/contacts_header_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactPage extends StatelessWidget {
  final Color colorPrimay = Colors.orange;
  final TextStyle titleTextStyle = GoogleFonts.workSans(fontSize: 32);
  final TextStyle descriptionTextStyle = GoogleFonts.workSans(fontSize: 16);
  final TextStyle sectionTextStyle = GoogleFonts.workSans(fontSize: 12);

  final List<Contact> contacts = Contact.getContacts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        selectedItemColor: Colors.amber[800],
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
