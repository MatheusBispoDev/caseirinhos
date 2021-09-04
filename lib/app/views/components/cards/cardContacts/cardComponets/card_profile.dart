
import 'package:caseirinhos/app/views/components/fontAwesomeIcons/font_awesome_icons_custom.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardProfile extends StatelessWidget {
  final String image;

  CardProfile({this.image = ''});

  @override
  Widget build(BuildContext context) {
    final Color colorBackgroundProfile = Theme.of(context).accentColor;
    final Color colorProfile = Theme.of(context).primaryColor;
    return CircleAvatar(
        backgroundColor: colorBackgroundProfile,
        radius: 30,
        child: image != ''
            ? Image.asset(
                image,
                height: 5,
                color: Colors.orange,
              )
            : FontAwesomeIconCustom(FontAwesomeIcons.userAlt,
                color: colorProfile, size: 25));
  }
}
