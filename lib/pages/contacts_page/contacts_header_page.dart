import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactHeadersPage extends StatefulWidget {

  ContactHeadersPage({Key? key}) : super(key: key);

  @override
  _ContactHeadersPageState createState() => _ContactHeadersPageState();
}

class _ContactHeadersPageState extends State<ContactHeadersPage> {
  final TextStyle titleTextStyle = GoogleFonts.workSans(fontSize: 32);
  bool isSelectedFavorite = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            child: isSelectedFavorite == true ? Icon(Icons.star_border, color: Colors.orange,) : Icon(Icons.star_border_outlined, color: Colors.black,),
            onTap: () {
              setState(() {
                // TODO: Gerenciamento de estado
                isSelectedFavorite = !isSelectedFavorite;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.only(right: 40, left: 40),
            child: Text('Contatos', style: titleTextStyle),
          ),
          GestureDetector(
            child: Icon(Icons.add),
            onTap: () {
              //TODO: criar tela de cadastro de contatos
            },
          ),
        ],
      ),
    );
  }
}