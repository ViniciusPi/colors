import 'package:flutter/material.dart';

class Changer extends ChangeNotifier {
  static Changer instance = Changer();
  String color = "";
  funColor() {
    switch (color) {
      case "Red":
        return Colors.red;

        break;
      default:
        return Colors.blue;
    }
  }
}
