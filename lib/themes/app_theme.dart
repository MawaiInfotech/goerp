import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static final theme = ThemeData(
      fontFamily: 'Poppins',
      primaryTextTheme: const TextTheme(),
      useMaterial3: false,
      scaffoldBackgroundColor: Colors.grey.shade100,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue.shade700,
              elevation: 8,
              padding: const EdgeInsets.all(8),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              minimumSize: const Size(250, 40))),
      appBarTheme: AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.blue.shade600,
        titleTextStyle:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      // cardTheme: CardTheme(
      //     elevation: 10,
      //     shape:
      //         RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
  );
}
