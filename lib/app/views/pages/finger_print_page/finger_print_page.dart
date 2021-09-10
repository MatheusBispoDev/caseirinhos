import 'package:caseirinhos/app/views/blocs/finger_page_bloc/finger_page_bloc.dart';
import 'package:caseirinhos/app/views/blocs/finger_page_bloc/finger_page_state.dart';
import 'package:caseirinhos/app/views/components/fontAwesomeIcons/font_awesome_icons_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        onTap: () {
          context.read<FingerPageBloc>().add(0);
        },
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
                  BlocBuilder<FingerPageBloc, FingerPageState>(
                    bloc: context.read<FingerPageBloc>(),
                    builder: (context, state) {
                      if (state is FingerPageWaiting) {
                        return Container();
                      }

                      if (state is FingerPageError) {
                        return Container(
                          height: 300,
                          color: Colors.red,
                        );
                      }

                      return Container(
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        child: FontAwesomeIconCustom(
                          FontAwesomeIcons.mugHot,
                          color: colorBiometric,
                          size: 100,
                        ),
                      );
                    },
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
}
