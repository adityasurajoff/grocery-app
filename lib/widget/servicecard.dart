import 'package:flutter/material.dart';

Widget serviceCard({String title, Widget iconwidget}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
    width: 110,
    height: 110,
    decoration: BoxDecoration(
      color: Colors.purple.withOpacity(0.05),
      border: Border.all(width: 0, color: Colors.purple),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        iconwidget,
        SizedBox(height: 4),
        Text(
          title == null ? "" : title,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}
