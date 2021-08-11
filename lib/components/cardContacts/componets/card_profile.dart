import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardProfile extends StatelessWidget {
  final Color colorBackgroundProfile = Colors.orange.shade50;
  final Color colorProfile = Colors.orange;
  final String image;

  CardProfile({this.image = ''});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: colorBackgroundProfile,
      radius: 30,
      child: image != ''
          ? Image.asset(
              image,
              height: 5,
              color: Colors.orange,
            )
          : Center(
              child: FaIcon(
              FontAwesomeIcons.userAlt,
              color: colorProfile,
              size: 25,
            )),
    );
  }
}
