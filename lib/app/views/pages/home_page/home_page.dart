import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Color scaffoldColor = Theme.of(context).scaffoldBackgroundColor;

    return Scaffold(
      backgroundColor: scaffoldColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              child: Text('Teste'),
              onPressed: () async {
                var status = await Permission.contacts.status;
                print('permissão: $status');
                if (status.isDenied) {
                  var newStatus = await Permission.contacts.request().isGranted;
                  print('nova permissão: $newStatus');
                  if(!newStatus){
                    bool isShown = await Permission.contacts.isPermanentlyDenied;
                    await Permission.contacts.shouldShowRequestRationale;
                    await Permission.notification.shouldShowRequestRationale;
                    await Permission.calendar.shouldShowRequestRationale;
                    await Permission.phone.shouldShowRequestRationale;
                    print('Solicitação de permissão $isShown');
                    openAppSettings();
                  }
                }
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
