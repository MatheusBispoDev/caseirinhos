
import 'package:caseirinhos/app/views/components/fontAwesomeIcons/font_awesome_icons_custom.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FingerPrintPage extends StatefulWidget {
  FingerPrintPage({Key? key}) : super(key: key);

  @override
  _FingerPrintPageState createState() => _FingerPrintPageState();
}

class _FingerPrintPageState extends State<FingerPrintPage> {
  Color colorBiometric = Colors.grey;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Color scaffoldColor = Theme.of(context).scaffoldBackgroundColor;
    final TextStyle? titleTextStyle = Theme.of(context).textTheme.headline3;

    return Scaffold(
      backgroundColor: scaffoldColor,
      body: GestureDetector(
        onTap: () {},
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Text(
                          'Bem-vindo ao caseirinhos',
                          style: titleTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    child: FontAwesomeIconCustom(
                      FontAwesomeIcons.mugHot,
                      color: colorBiometric,
                      size: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 100),
                    child: FontAwesomeIconCustom(
                      Icons.fingerprint,
                      size: 120,
                      color: colorBiometric,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  /*
  _verifiyAuthenticated() async {
    //Todo: refatoracao / Separar regra de autenticacao da view
    final isAuthenticated = await LocalAuth.authenticateWithBiometrics();

    if (isAuthenticated) {
      setState(() {
        colorBiometric = Colors.green;
      });
      Navigator.pushReplacementNamed(context, '/customnavbar');
    } else {
      setState(() {
        colorBiometric = Colors.red;
      });
    }
  }*/
}