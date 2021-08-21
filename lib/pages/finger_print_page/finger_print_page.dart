import 'package:caseirinhos/api/authentication/local_auth.dart';
import 'package:caseirinhos/components/fontAwesomeIcons/font_awesome_icons_custom.dart';
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
  Widget build(BuildContext context) {
    final Color iconColor = Theme.of(context).unselectedWidgetColor;
    final TextStyle? titleTextStyle = Theme.of(context).textTheme.headline3;
    final TextStyle? descTextStyle = Theme.of(context).textTheme.headline2;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
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
                  child: Expanded(
                    child: Column(
                      children: [
                        Text(
                          'Bem-vindo ao caseirinhos',
                          style: titleTextStyle,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 30),
                        Text(
                          'Para acessar clique na biometria',
                          style: descTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Expanded(
                    child: FontAwesomeIconCustom(
                      FontAwesomeIcons.coffee,
                      color: colorBiometric,
                      size: 100,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: GestureDetector(
                    child: FontAwesomeIconCustom(
                      Icons.fingerprint,
                      size: 120,
                      color: colorBiometric,
                    ),
                    onTap: () async {
                      //Todo: refatoracao / Separar regra de autenticacao da view
                      final isAuthenticated =
                          await LocalAuth.authenticateWithBiometrics();

                      if (isAuthenticated) {
                        setState(() {
                          colorBiometric = Colors.green;
                        });
                        Navigator.pushReplacementNamed(
                            context, '/customnavbar');
                      } else {
                        setState(() {
                          colorBiometric = Colors.red;
                        });
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
