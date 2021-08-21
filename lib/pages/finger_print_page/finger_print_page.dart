import 'package:caseirinhos/api/local_auth_api.dart';
import 'package:flutter/material.dart';

class FingerPrintPage extends StatelessWidget {
  const FingerPrintPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        child: Text('Olá'),
        onPressed: () async {
          bool isAuthenticated =
              await LocalAuthApi.authenticateWithBiometrics();

          if (isAuthenticated) {
            print('dale');
          } else {
            print('error');
          }
        },
      ),
    );
  }
}
