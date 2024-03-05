import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

void main() {
  runApp(
    MaterialApp(
      // make sure when using multiple themese that all widget themese used in the app also exist on all custom themes
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        // Copied because we are using the custom cardTheme in the Item Card
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: kDarkColorScheme.onPrimaryContainer,
            backgroundColor: kDarkColorScheme.primaryContainer,
          ),
        ),
      ),
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 125, 162, 173),
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.primaryContainer),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kColorScheme.onSecondaryContainer,
                  fontSize: 16),
            ),
      ),
      // themeMode: ThemeMode.system, default
      home: const Expenses(),
    ),
  );

  // This locks the rotation when changing orientation
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  //     .then((fn) => {
  //           runApp(
  //             MaterialApp(
  //               // make sure when using multiple themese that all widget themese used in the app also exist on all custom themes
  //               darkTheme: ThemeData.dark().copyWith(
  //                 colorScheme: kDarkColorScheme,
  //                 // Copied because we are using the custom cardTheme in the Item Card
  //                 cardTheme: const CardTheme().copyWith(
  //                   color: kDarkColorScheme.secondaryContainer,
  //                   margin:
  //                       const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
  //                 ),
  //                 elevatedButtonTheme: ElevatedButtonThemeData(
  //                   style: ElevatedButton.styleFrom(
  //                     foregroundColor: kDarkColorScheme.onPrimaryContainer,
  //                     backgroundColor: kDarkColorScheme.primaryContainer,
  //                   ),
  //                 ),
  //               ),
  //               theme: ThemeData().copyWith(
  //                 scaffoldBackgroundColor:
  //                     const Color.fromARGB(255, 125, 162, 173),
  //                 colorScheme: kColorScheme,
  //                 appBarTheme: const AppBarTheme().copyWith(
  //                   backgroundColor: kColorScheme.onPrimaryContainer,
  //                   foregroundColor: kColorScheme.primaryContainer,
  //                 ),
  //                 cardTheme: const CardTheme().copyWith(
  //                   color: kColorScheme.secondaryContainer,
  //                   margin:
  //                       const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
  //                 ),
  //                 elevatedButtonTheme: ElevatedButtonThemeData(
  //                   style: ElevatedButton.styleFrom(
  //                       backgroundColor: kColorScheme.primaryContainer),
  //                 ),
  //                 textTheme: ThemeData().textTheme.copyWith(
  //                       titleLarge: TextStyle(
  //                           fontWeight: FontWeight.bold,
  //                           color: kColorScheme.onSecondaryContainer,
  //                           fontSize: 16),
  //                     ),
  //               ),
  //               // themeMode: ThemeMode.system, default
  //               home: const Expenses(),
  //             ),
  //           )
  //         });
}
