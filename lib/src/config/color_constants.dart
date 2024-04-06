import 'package:flutter/material.dart';

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}

class ColorConstants {
  static const Color green_800 = Color(0xFF1B4332);
  static const Color green_700 = Color(0xFF2D6A4F);
  static const Color green_600 = Color(0xFF40916C);
  static const Color green_500 = Color(0xFF52B788);
  static const Color green_400 = Color(0xFF74C69D);
  static const Color green_300 = Color(0xFF95D5B2);
  static const Color green_200 = Color(0xFFB7E4C7);
  static const Color green_100 = Color(0xFFD8F3DC);
  static const Color white = Color(0xFFFFFFFF);
  static const Color white_100 = Color(0xFFF8F9FA);
  static const Color black = Color(0xFF141218);
  static const Color grey = Color(0xFFE8E8E8);
  static const Color red = Color(0xFFD60000);
}
