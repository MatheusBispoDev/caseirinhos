import 'package:flutter/material.dart';

class AlertDialogExit extends StatelessWidget {
  const AlertDialogExit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle? dialogTitle = Theme.of(context).textTheme.headline2;
    final TextStyle? dialogDesc = Theme.of(context).textTheme.bodyText2;
    final Color scaffoldColor =  Theme.of(context).scaffoldBackgroundColor;
    final Color primaryColor = Theme.of(context).primaryColor;
    final String alertDialogTitle = 'Deseja Sair?';
    final String alertDialogDesc = 'Será retornado para a tela de biometria';
    final String alertDialogBottomYes = 'Sim';
    final String alertDialogBottomNo = 'Não';

    return AlertDialog(
      backgroundColor: scaffoldColor,
      title:
          Text(alertDialogTitle, style: dialogTitle, textAlign: TextAlign.center),
      content: Text(alertDialogDesc,
          style: dialogDesc, textAlign: TextAlign.center),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
        side: BorderSide(color: primaryColor, width: 1),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BottomAlertDialog(
                descBottom: alertDialogBottomYes,
                onPress: () {
                  Navigator.popAndPushNamed(context, '/fingerpage');
                }),
            SizedBox(
              width: 20,
            ),
            BottomAlertDialog(
                descBottom: alertDialogBottomNo,
                onPress: () {
                  Navigator.pop(context, false);
                }),
          ],
        ),
      ],
    );
  }
}

class BottomAlertDialog extends StatelessWidget {
  final String descBottom;
  final Function() onPress;

  const BottomAlertDialog({
    Key? key,
    required this.descBottom,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
        final Color primaryColor = Theme.of(context).primaryColor;
            final TextStyle? bottomDesc = Theme.of(context).textTheme.bodyText2; 
        
    return Container(
      width: 100,
      child: ElevatedButton(
        child: Text(descBottom, style: bottomDesc),
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          primary: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
        ),
      ),
    );
  }
}
