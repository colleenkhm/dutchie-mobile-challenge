import 'package:flutter/material.dart';

class AppTheme {
  static Color get primaryGreen => Color(0xFF26A27B);

  static MaterialColor get green => MaterialColor(
    primaryGreen.toARGB32(),
    <int, Color>{95: Color(0xFFf0fffa), 65: Color(0xFF86c1ab)},
  );

  static ThemeData get themeData => ThemeData(
    colorScheme: ThemeData().colorScheme.copyWith(primary: primaryGreen),
    textTheme: TextTheme(
      bodyLarge: TextStyle(fontWeight: .w400, fontSize: 14, height: 1.65),
      bodyMedium: TextStyle(fontWeight: .w700, fontSize: 14, height: 1.65),
    ),
  );
}
