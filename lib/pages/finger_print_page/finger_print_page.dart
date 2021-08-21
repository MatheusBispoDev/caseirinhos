import 'package:caseirinhos/api/authentication/local_auth.dart';
import 'package:caseirinhos/components/fontAwesomeIcons/font_awesome_icons_custom.dart';
import 'package:flutter/material.dart';

class FingerPrintPage extends StatefulWidget {
  FingerPrintPage({Key? key}) : super(key: key);

  @override
  _FingerPrintPageState createState() => _FingerPrintPageState();
}

class _FingerPrintPageState extends State<FingerPrintPage> {
  Color color = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: GestureDetector(
                child: FontAwesomeIconCustom(
                  Icons.fingerprint,
                  size: 120,
                  color: color,
                ),
                onTap: () async {
                  //Todo: refatoracao / Separar regra de autenticacao da view
                  final isAuthenticated =
                      await LocalAuth.authenticateWithBiometrics();

                  if (isAuthenticated) {
                    setState(() {
                      color = Colors.green;
                    });
                    Navigator.pushReplacementNamed(context, '/customnavbar');
                  } else {
                    setState(() {
                      color = Colors.red;
                    });
                  }
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
