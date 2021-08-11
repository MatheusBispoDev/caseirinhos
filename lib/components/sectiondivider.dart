import 'package:flutter/material.dart';

class SectionDivider extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final Color colorDivider;

  SectionDivider(
      {required this.text,
      required this.textStyle,
      required this.colorDivider});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(text, style: textStyle),
          Expanded(
            child: Divider(
              height: 21,
              thickness: 2,
              indent: 20,
              color: colorDivider,
            ),
          ),
        ],
      ),
    );
  }
}
