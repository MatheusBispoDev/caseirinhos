import 'package:caseirinhos/app/models/contact_local.dart';
import 'package:flutter/material.dart';

class CardDescriptions extends StatelessWidget {
  final ContactLocal contact;

  CardDescriptions(this.contact);

  @override
  Widget build(BuildContext context) {
    final TextStyle? nameCardTextStyle = Theme.of(context).textTheme.subtitle1;
    final TextStyle? phoneCardTextStyle = Theme.of(context).textTheme.subtitle2;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20, top: 5),
          child: Text(contact.name, style: nameCardTextStyle),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, top: 5),
          child: Text(contact.phone, style: phoneCardTextStyle),
        ),
      ],
    );
  }
}
