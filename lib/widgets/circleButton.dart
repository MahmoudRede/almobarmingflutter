import 'package:flutter/material.dart';
import '../Constants/constants.dart' ;


class CircleButton extends StatelessWidget {
  final IconData icon ;
  final double iconSize;
  final Color iconColor ;
  final Color ?bgColor ;
  final Function onPressed;

  CircleButton({
        Key ?key,
        required this.icon,
        required this.iconSize,
        required this.iconColor,
        required this.bgColor,
        required this.onPressed,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: bgColor, // Palette.APPBAR_IconsBGCOLOR,
              shape: BoxShape.circle,
            ),
            child: IconButton(
                icon: Icon(icon),
                iconSize: iconSize,
                color: iconColor, // Palette.APPBAR_IconsCOLOR,
                onPressed: (){
                  onPressed();
                },
            ),
          );
  }
}