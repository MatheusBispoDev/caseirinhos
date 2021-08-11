import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardProfile extends StatelessWidget {
  final Color colorBackgroundProfile = Colors.orange.shade50;
  final Color colorProfile = Colors.orange;
  final String image;

  CardProfile({this.image = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        color: colorBackgroundProfile,
      ),
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
