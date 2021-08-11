import 'package:caseirinhos/components/cardContacts/componets/card_icon_button.dart';
import 'package:caseirinhos/components/cardContacts/componets/card_profile.dart';
import 'package:caseirinhos/models/contacts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CardContacts extends StatelessWidget {
  final TextStyle nameCardTextStyle = GoogleFonts.workSans(
      fontSize: 18, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic);
  final TextStyle phoneCardTextStyle =
      GoogleFonts.workSans(fontSize: 14, fontStyle: FontStyle.italic);
  final Contact contact;

  CardContacts(this.contact);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
       // TODO: Implementar toque simples no Card
      },
      onLongPress: (){
        // TODO: Implementar toque longo no Card
      },
      child: Card(
        shape: InputBorder.none,
        elevation: 0.0,
        child: Padding(
          padding: EdgeInsets.only(left: 30, top: 10, bottom: 10, right: 35),
          child: Row(
            children: <Widget>[
              CardProfile(),
              Column(
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
              ),
              Padding(
                padding: EdgeInsets.only(left: 50, top: 5),
                child: CardIconButton(
                  icon: FontAwesomeIcons.whatsapp,
                  onTap: (){
                    // TODO: Adicionar funcionalidade no icon de mensagem
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, top: 5),
                child: CardIconButton(
                  icon: FontAwesomeIcons.phone,
                  onTap: (){
                    // TODO: Adicionar funcionalidade no icon de telefone
                  }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}