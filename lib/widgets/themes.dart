import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Vx.hexToColor("#2D2E32"),
      cardColor: Vx.hexToColor("#1F1F1F"),
      focusColor: Vx.hexToColor("#004A77"),
      iconTheme: IconThemeData(
        color: Vx.hexToColor("#79B0CE"),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Vx.hexToColor("#2D2E32"),
        elevation: 0,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Vx.hexToColor("#38393D"),
        elevation: 1,
      ),
    );
  }
}
