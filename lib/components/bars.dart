import 'package:flutter/material.dart';

class Bars extends StatelessWidget {
  final icons;
  final text;

  Bars({this.icons, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10.00, bottom: 0.00),
          child: ListTile(
            leading: Icon(icons, size: 35.0, color: Colors.grey.shade600),
            title: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: "DidactGothic",
                color: Colors.black,
                fontSize: 20.00,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}
