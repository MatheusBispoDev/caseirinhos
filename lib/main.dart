import 'package:caseirinhos/components/sectiondivider.dart';
import 'package:caseirinhos/components/textfield_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.black12,
          selectionColor: Colors.black12,
        ),
      ),
      home: ContatosPage(),
    );
  }
}

class ContatosPage extends StatefulWidget {
  const ContatosPage({Key? key}) : super(key: key);

  @override
  _ContatoseState createState() => _ContatoseState();
}

class _ContatoseState extends State<ContatosPage> {
  Color colorPrimay = Colors.orange;
  TextStyle titleTextStyle = GoogleFonts.workSans(fontSize: 32);
  TextStyle descriptionTextStyle = GoogleFonts.workSans(fontSize: 16);
  TextStyle sectionTextStyle = GoogleFonts.workSans(fontSize: 12);

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
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star_border_outlined),
                  Padding(
                    padding: const EdgeInsets.only(right: 40, left: 40),
                    child: Text('Contatos', style: titleTextStyle),
                  ),
                  Icon(Icons.add),
                ],
              ),
            ),
            SizedBox(height: 30),
            TextfieldSearch(
              cursosColor: colorPrimay,
              descriptionTextStyle: descriptionTextStyle,
            ),
            SizedBox(height: 30),
            SectionDivider(
              text: 'Recentes',
              textStyle: descriptionTextStyle,
              colorDivider: colorPrimay,
            ),
            SizedBox(height: 30),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 480,
              child: ListView(
                children: [],
              ),
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
