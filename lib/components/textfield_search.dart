import 'package:flutter/material.dart';

class TextfieldSearch extends StatelessWidget {
  final Color cursosColor;
  final TextStyle descriptionTextStyle;

  TextfieldSearch(
      {required this.cursosColor, required this.descriptionTextStyle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60, right: 60),
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 15, left: 15),
                child: Icon(Icons.search),
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: TextField(
                  cursorColor: cursosColor,
                  style: descriptionTextStyle,
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(width: 0.0),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
      ),
    );
  }
}
