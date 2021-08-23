import 'package:caseirinhos/components/cards/cardContacts/card_contacts.dart';
import 'package:caseirinhos/components/fontAwesomeIcons/font_awesome_icons_custom.dart';
import 'package:caseirinhos/components/icons/icon_app_bar.dart';
import 'package:caseirinhos/components/section_divider/section_divider.dart';
import 'package:caseirinhos/components/textfields/textfield_search.dart';
import 'package:caseirinhos/layout/constants/contacts_page_constants.dart';
import 'package:caseirinhos/models/contacts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliver_header_delegate/sliver_header_delegate.dart';

class ContactsPage extends StatefulWidget {
  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  final List<Contact> contacts = Contact.getContacts();
  final String dividerText = ContactsPageConstrants.titleAppBarContactsPage;

  @override
  Widget build(BuildContext context) {
    final Color scaffoldColor = Theme.of(context).scaffoldBackgroundColor;
    final Color colorPrimay = Theme.of(context).primaryColor;
    final TextStyle? descriptionTextStyle =
        Theme.of(context).textTheme.bodyText1;
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
              leading: FavoritedIcon(),
              actions: [
                IconAppBar(
                  icon: FontAwesomeIcons.plus,
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  onTap: () {},
                ),
              ],
              children: [
                FlexibleTextItem(
                  text: 'Contatos',
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
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: TextfieldSearch(
                descriptionTextStyle: titleAppBarStyle,
                onChanged: (String text) {
                  // TODO: Adicionar filtro de contatos
                  print('Text: $text');
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: SectionDivider(
                text: 'Recentes',
                textStyle: descriptionTextStyle,
                colorDivider: colorPrimay,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return CardContacts(contacts[index]);
              },
              childCount: contacts.length,
            ),
          ),
        ],
      ),
    );
  }
}

class FavoritedIcon extends StatefulWidget {
  const FavoritedIcon({Key? key}) : super(key: key);

  @override
  _FavoritedIconState createState() => _FavoritedIconState();
}

class _FavoritedIconState extends State<FavoritedIcon> {
  bool isSelectedFavorite = true;

  @override
  Widget build(BuildContext context) {
    final Color colorSelected = Theme.of(context).primaryColor;
    final Color colorUnSelected = Theme.of(context).unselectedWidgetColor;
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: isSelectedFavorite == true
            ? FontAwesomeIconCustom(
                FontAwesomeIcons.star,
                color: colorSelected,
                size: 30,
              )
            : FontAwesomeIconCustom(
                FontAwesomeIcons.star,
                color: colorUnSelected,
                size: 30,
              ),
      ),
      onTap: () {
        setState(() {
          // TODO: Gerenciamento de estado
          isSelectedFavorite = !isSelectedFavorite;
        });
      },
    );
  }
}
