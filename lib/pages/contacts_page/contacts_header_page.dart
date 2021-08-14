import 'package:caseirinhos/layout/constants/contacts_page_constants.dart';
import 'package:flutter/material.dart';

class ContactHeadersPage extends StatefulWidget {
  ContactHeadersPage({Key? key}) : super(key: key);

  @override
  _ContactHeadersPageState createState() => _ContactHeadersPageState();
}

class _ContactHeadersPageState extends State<ContactHeadersPage> {
  final String title = ContactsPageConstrants.titleAppBarContactsPage;
  bool isSelectedFavorite = true;

  @override
  Widget build(BuildContext context) {
    final TextStyle? titleTextStyle = Theme.of(context).textTheme.headline1;
    final Color colorSelected = Theme.of(context).primaryColor;
    final Color colorUnSelected = Theme.of(context).unselectedWidgetColor;

    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            child: isSelectedFavorite == true
                ? Icon(
                    Icons.star_border,
                    color: colorSelected,
                  )
                : Icon(
                    Icons.star_border_outlined,
                    color: colorUnSelected,
                  ),
            onTap: () {
              setState(() {
                // TODO: Gerenciamento de estado
                isSelectedFavorite = !isSelectedFavorite;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.only(right: 40, left: 40),
            child: Text(title, style: titleTextStyle),
          ),
          GestureDetector(
            child: Icon(
              Icons.add,
              color: colorUnSelected,
            ),
            onTap: () {
              //TODO: criar tela de cadastro de contatos
            },
          ),
        ],
      ),
    );
  }
}
