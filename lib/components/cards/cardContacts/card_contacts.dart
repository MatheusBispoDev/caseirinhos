import 'package:caseirinhos/models/contacts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cardComponets/card_descriptions.dart';
import 'cardComponets/card_icon_button.dart';
import 'cardComponets/card_profile.dart';

class CardContacts extends StatelessWidget {
  final Contact contact;
  CardContacts(this.contact);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // TODO: Implementar toque simples no Card
      },
      onLongPress: () {
        // TODO: Implementar toque longo no Card
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 1),
        child: Card(
          shape: InputBorder.none,
          elevation: 0.0,
          child: Padding(
            padding: EdgeInsets.only(left: 30, top: 5, bottom: 5, right: 35),
            child: Row(
              children: <Widget>[
                CardProfile(),
                CardDescriptions(contact),
                Padding(
                  padding: EdgeInsets.only(left: 50, top: 5),
                  child: CardIconButton(
                    icon: FontAwesomeIcons.whatsapp,
                    onTap: () {
                      // TODO: Adicionar funcionalidade no icon de mensagem
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, top: 5),
                  child: CardIconButton(
                      icon: FontAwesomeIcons.phone,
                      onTap: () {
                        // TODO: Adicionar funcionalidade no icon de telefone
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
