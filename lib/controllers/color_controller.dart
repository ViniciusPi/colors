import 'package:flutter/material.dart';

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
