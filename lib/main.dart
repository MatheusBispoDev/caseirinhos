import 'package:caseirinhos/app/repositories/authentication_repository/local_auth_repository.dart';
import 'package:caseirinhos/app/views/appcontroller.dart';
import 'package:caseirinhos/app/views/blocs/finger_print_bloc/finger_print_bloc.dart';
import 'package:caseirinhos/app/views/layout/theme/theme_dark.dart';
import 'package:caseirinhos/app/views/layout/theme/theme_light.dart';
import 'package:caseirinhos/app/views/pages/contacts_page/contacts_page.dart';
import 'package:caseirinhos/app/views/pages/custom_bottom_nav_bar/custom_bottom_nav_bar.dart';
import 'package:caseirinhos/app/views/pages/finger_print_page/finger_print_page.dart';
import 'package:caseirinhos/app/views/pages/sales_page/sales_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppController>.value(value: AppController.instance),
        Provider(create: (_) => LocalAuthRepository()),
        BlocProvider(create: (context) => FingerPageBloc(context.read<LocalAuthRepository>())),
      ],
      child: AnimatedBuilder(
          animation: AppController.instance,
          builder: (context, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              themeMode: Provider.of<AppController>(context).isDarkTheme
                  ? ThemeMode.dark
                  : ThemeMode.light,
              theme: themeLight(),
              darkTheme: themeDark(),
              initialRoute: '/customnavbar',
              routes: {
                '/fingerpage': (context) => FingerPrintPage(),
                '/customnavbar': (context) => CustomBottomNavBar(),
                '/contactspage': (context) => ContactsPage(),
                '/salespage': (context) => SalesPage(),
              },
            );
          }),
    );
  }
}
