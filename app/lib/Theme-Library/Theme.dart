import 'package:flutter/material.dart';

import 'package:app/main.dart';
import 'package:app/Theme-Library/constants.dart';

void main() {
  runApp(const ThemeLibraryDark());
}

class ThemeLibraryDark extends StatelessWidget {
  const ThemeLibraryDark({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        colorScheme: const ColorScheme.dark(),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: kPrimaryColor,
            shape: const StadiumBorder(),
            maximumSize: const Size(double.infinity, 56),
            minimumSize: const Size(double.infinity, 56),
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: kPrimaryLightColor,
          iconColor: kPrimaryColor,
          prefixIconColor: kPrimaryColor,
          contentPadding: EdgeInsets.symmetric(
              horizontal: defaultPadding, vertical: defaultPadding),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      home: const MyApp(),
    );
  }
}

class ThemeLibraryLight extends StatelessWidget {
  const ThemeLibraryLight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(),
      ),
      home: const MyApp(),
    );
  }
}

class ThemeLibraryDeepPurple extends StatelessWidget {
  const ThemeLibraryDeepPurple({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const MyApp(),
    );
  }
}

class ThemeLibraryBlue extends StatelessWidget {
  const ThemeLibraryBlue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyApp(),
    );
  }
}

class ThemeLibraryGreen extends StatelessWidget {
  const ThemeLibraryGreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: const MyApp(),
    );
  }
}

class ThemeLibraryTeal extends StatelessWidget {
  const ThemeLibraryTeal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const MyApp(),
    );
  }
}

class ThemeLibraryYellowAccent extends StatelessWidget {
  const ThemeLibraryYellowAccent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: const MyApp(),
    );
  }
}

class ThemeLibraryCyan extends StatelessWidget {
  const ThemeLibraryCyan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: const MyApp(),
    );
  }
}

class ThemeLibraryAmber extends StatelessWidget {
  const ThemeLibraryAmber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const MyApp(),
    );
  }
}

class ThemeLibraryBrown extends StatelessWidget {
  const ThemeLibraryBrown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.brown),
      home: const MyApp(),
    );
  }
}

class ThemeLibraryLime extends StatelessWidget {
  const ThemeLibraryLime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lime),
      home: const MyApp(),
    );
  }
}

class ThemeLibraryIndigo extends StatelessWidget {
  const ThemeLibraryIndigo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const MyApp(),
    );
  }
}

class ThemeLibraryHighContrastLight extends StatelessWidget {
  const ThemeLibraryHighContrastLight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.highContrastLight(),
      ),
      home: const MyApp(),
    );
  }
}
