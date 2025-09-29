import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RequestWidget extends StatelessWidget {
  IconData icons;
  String title;
  String subtitle1;
  String subtitle2;
  Color couleur;
   RequestWidget({
    super.key,
    required this.icons,
    required this.title,
    required this.subtitle1,
    required this.subtitle2,
     required this.couleur,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
     // width: 30,
      //height: 30,
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: couleur,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icons),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold),),
          Text(subtitle1),
          Text(subtitle2),
        ],
      ),
    );
  }
}
