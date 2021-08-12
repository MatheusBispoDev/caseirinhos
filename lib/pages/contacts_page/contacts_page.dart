import 'package:caseirinhos/components/cardContacts/card_contacts.dart';
import 'package:caseirinhos/components/section_divider.dart';
import 'package:caseirinhos/components/textfield_search.dart';
import 'package:caseirinhos/models/contacts.dart';
import 'package:caseirinhos/pages/contacts_page/contacts_header_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:google_fonts/google_fonts.dart';
  final TextStyle descriptionTextStyle = GoogleFonts.workSans(fontSize: 16);
class ContactPage extends StatelessWidget {
  final Color colorPrimay = Colors.orange;
  final TextStyle titleTextStyle = GoogleFonts.workSans(fontSize: 32);
  final TextStyle descriptionTextStyle = GoogleFonts.workSans(fontSize: 16);
  final TextStyle sectionTextStyle = GoogleFonts.workSans(fontSize: 12);

  final List<Contact> contacts = Contact.getContacts();

  final int selectedItemPosition = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildBottomBar(),
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            ContactHeadersPage(),
            SizedBox(height: 30),
            TextfieldSearch(
              cursosColor: colorPrimay,
              descriptionTextStyle: descriptionTextStyle,
              onChanged: (String text) {
                // TODO: Adicionar filtro de contatos
                print('Text: $text');
              },
            ),
            SizedBox(height: 30),
            SectionDivider(
              text: 'Recentes',
              textStyle: descriptionTextStyle,
              colorDivider: colorPrimay,
            ),
            SizedBox(height: 30),
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: 520,
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (BuildContext context, int index) {
                  return CardContacts(contacts[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

 Widget _buildBottomBar(){
    return CustomAnimatedBottomBar(
      containerHeight: 70,
      backgroundColor: Colors.white,
      selectedIndex: 0,
      showElevation: false,
      curve: Curves.easeIn,
      //onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: Icon(Icons.apps),
          title: Text('Home'),
          activeColor: Colors.orange,
          inactiveColor: Colors.orange,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.people),
          title: Text('Users'),
          activeColor: Colors.orange,
          inactiveColor: Colors.orange,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.message),
          title: Text(
            'Messages ',
          ),
          activeColor: Colors.orange,
          inactiveColor: Colors.orange,
          textAlign: TextAlign.center,
        ),
      ], onItemSelected: (int value) {  },
    );
  }

class CustomAnimatedBottomBar extends StatelessWidget {

  CustomAnimatedBottomBar({
    Key? key,
    this.selectedIndex = 0,
    this.showElevation = true,
    this.iconSize = 24,
    this.backgroundColor,
    this.itemCornerRadius = 50,
    this.containerHeight = 56,
    this.animationDuration = const Duration(milliseconds: 270),
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
    required this.items,
    required this.onItemSelected,
    this.curve = Curves.linear,
  }) : assert(items.length >= 2 && items.length <= 5),
        super(key: key);
  
  final int selectedIndex;
  final double iconSize;
  final Color? backgroundColor;
  final bool showElevation;
  final Duration animationDuration;
  final List<BottomNavyBarItem> items;
  final ValueChanged<int> onItemSelected;
  final MainAxisAlignment mainAxisAlignment;
  final double itemCornerRadius;
  final double containerHeight;
  final Curve curve;

  @override
  Widget build(BuildContext context) {
    final bgColor = backgroundColor ?? Theme.of(context).bottomAppBarColor;

    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        boxShadow: [
          if (showElevation)
            const BoxShadow(
              color: Colors.black12,
              blurRadius: 2,
            ),
        ],
      ),
      child: SafeArea(
        child: Container(
          width: double.infinity,
          height: containerHeight,
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
          child: Row(
            mainAxisAlignment: mainAxisAlignment,
            children: items.map((item) {
              var index = items.indexOf(item);
              return GestureDetector(
                onTap: () => onItemSelected(index),
                child: _ItemWidget(
                  item: item,
                  iconSize: iconSize,
                  isSelected: index == selectedIndex,
                  backgroundColor: bgColor,
                  itemCornerRadius: itemCornerRadius,
                  animationDuration: animationDuration,
                  curve: curve,
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class _ItemWidget extends StatelessWidget {
  final double iconSize;
  final bool isSelected;
  final BottomNavyBarItem item;
  final Color backgroundColor;
  final double itemCornerRadius;
  final Duration animationDuration;
  final Curve curve;

  const _ItemWidget({
    Key? key,
    required this.item,
    required this.isSelected,
    required this.backgroundColor,
    required this.animationDuration,
    required this.itemCornerRadius,
    required this.iconSize,
    this.curve = Curves.linear,
  })  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: true,
      selected: isSelected,
      child: AnimatedContainer(
        width: isSelected ? 130 : 50,
        height: double.maxFinite,
        duration: animationDuration,
        decoration: UnderlineTabIndicator(
          insets: EdgeInsets.only(bottom: 50),
          borderSide: BorderSide(width: 5, color: isSelected ? item.activeColor!.withOpacity(0.2) : backgroundColor,),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: NeverScrollableScrollPhysics(),
          child: Container(
            width: isSelected ? 130 : 50,
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                IconTheme(
                  data: IconThemeData(
                    size: iconSize,
                    color: isSelected
                        ? item.activeColor!.withOpacity(1)
                        : item.inactiveColor == null
                        ? item.activeColor
                        : item.inactiveColor,
                  ),
                  child: item.icon,
                ),
                if (isSelected)
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      child: DefaultTextStyle.merge(
                        style: descriptionTextStyle,
                        maxLines: 1,
                        textAlign: item.textAlign,
                        child: item.title,
                      ),
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

class BottomNavyBarItem {
  BottomNavyBarItem({
    required this.icon,
    required this.title,
    this.activeColor = Colors.orange,
    this.textAlign,
    this.inactiveColor = Colors.orange,
  });

  final Widget icon;
  final Widget title;
  final Color? activeColor;
  final Color? inactiveColor;
  final TextAlign? textAlign;

}