import 'package:flutter/material.dart';

class ColorManager {
  static Color primary = HexColor.fromHex("#ED9728");
  static Color darkGrey = HexColor.fromHex("#525252");
  static Color grey = HexColor.fromHex("#737477");
  static Color lightGrey = HexColor.fromHex("#9E9E9E");
  static Color primaryOpacity70 = HexColor.fromHex("#B3ED9728");
}

// if the color string > 6 characters, that mean it has opacity value

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');

    //check the length of color string
    if (hexColorString.length == 6) {
      hexColorString =
          "FF" + hexColorString; // 8 character with opacity of 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
