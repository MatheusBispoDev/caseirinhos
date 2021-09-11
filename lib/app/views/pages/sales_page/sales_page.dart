
import 'package:caseirinhos/app/models/sales.dart';
import 'package:caseirinhos/app/views/layout/components/icons/icon_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliver_header_delegate/sliver_header_delegate.dart';

class SalesPage extends StatefulWidget {
  const SalesPage({Key? key}) : super(key: key);

  @override
  _SalesPageState createState() => _SalesPageState();
}

class _SalesPageState extends State<SalesPage> {
  final List<Sales> contacts = Sales.getSales();

  @override
  Widget build(BuildContext context) {
    final Color scaffoldColor = Theme.of(context).scaffoldBackgroundColor;
    final TextStyle? titleAppBarStyle = Theme.of(context).textTheme.headline1;

    return Scaffold(
      backgroundColor: scaffoldColor,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: FlexibleHeaderDelegate(
              statusBarHeight: MediaQuery.of(context).padding.top,
              backgroundColor: scaffoldColor,
              leading: IconAppBar(
                icon: FontAwesomeIcons.chevronLeft,
                size: 25,
                padding: EdgeInsets.symmetric(horizontal: 30),
                onTap: () {},
              ),
              actions: [
                IconAppBar(
                  icon: FontAwesomeIcons.chevronRight,
                  size: 25,
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  onTap: () {},
                ),
              ],
              children: [
                FlexibleTextItem(
                  text: 'Vendas',
                  expandedStyle: titleAppBarStyle,
                  collapsedStyle: titleAppBarStyle,
                  expandedAlignment: Alignment.bottomLeft,
                  collapsedAlignment: Alignment.center,
                  expandedPadding:
                      EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(width: 130),
                        VerticalDivider(),
                      ],
                    ),
                  ),
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
