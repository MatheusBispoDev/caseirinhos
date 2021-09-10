import 'package:caseirinhos/app/views/appcontroller.dart';
import 'package:caseirinhos/app/views/blocs/finger_print_bloc/finger_print_bloc.dart';
import 'package:caseirinhos/app/views/blocs/finger_print_bloc/finger_print_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class FingerPrintPage extends StatefulWidget {
  @override
  _FingerPrintPageState createState() => _FingerPrintPageState();
}

class _FingerPrintPageState extends State<FingerPrintPage> {
  @override
  Widget build(BuildContext context) {
    final Color scaffoldColor = Theme.of(context).scaffoldBackgroundColor;
    final Color primaryColor = Theme.of(context).primaryColor;
    final TextStyle? titleTextStyle = Theme.of(context).textTheme.headline1;
    final TextStyle? descTextStyle = Theme.of(context).textTheme.subtitle1;
    final heightScreen = MediaQuery.of(context).size.height;
    final widthScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: scaffoldColor,
      body: BlocListener<FingerPageBloc, FingerPageState>(
        listener: (context, state) {
          if (state is FingerPageSucess) {
            Navigator.pushReplacementNamed(context, '/customnavbar');
          }
        },
        child: SafeArea(
          child: Container(
            height: heightScreen,
            width: widthScreen,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: heightScreen * 0.1,
                    width: widthScreen,
                    child: Column(
                      children: [
                        Text(
                          'Bem-vindo ao Caseirinhos',
                          style: titleTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Lottie.asset(
                      AppController.instance.isDarkTheme
                          ? 'assets/lottie/coffe_black.json'
                          : 'assets/lottie/coffe_white.json',
                      height: heightScreen * 0.5,
                      width: widthScreen,
                    ),
                  ),
                  SizedBox(height: heightScreen * 0.1),
                  Container(
                    height: heightScreen * 0.08,
                    width: widthScreen * 0.8,
                    child: ElevatedButton(
                      child: Text('Entrar', style: descTextStyle),
                      onPressed: () {
                        context.read<FingerPageBloc>().add(0);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
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
}
