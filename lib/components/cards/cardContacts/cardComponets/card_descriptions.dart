import 'package:caseirinhos/models/contacts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardDescriptions extends StatelessWidget {
  final TextStyle nameCardTextStyle = GoogleFonts.workSans(
      fontSize: 18, fontWeight: FontWeight.w500);
  final TextStyle phoneCardTextStyle =
      GoogleFonts.workSans(fontSize: 14, fontStyle: FontStyle.italic);

  final Contact contact;

  CardDescriptions(this.contact);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20, top: 5),
          child: Text(contact.name, style: nameCardTextStyle),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, top: 5),
          child: Text(contact.phone, style: phoneCardTextStyle),
        ),
      ],
    );
  }
}
