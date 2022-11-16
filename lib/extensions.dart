import 'package:flutter/material.dart';

extension HTMLColors on String{
  Color toColor(){
    String colorString = this;
    colorString = colorString.toUpperCase().replaceAll("#", "");
    if (colorString.length == 6) {
      colorString = "FF" + colorString;
    }
    if (colorString.length == 8) {
      return Color(int.parse(colorString, radix: 16));
    }
    return Colors.black;
  }
}