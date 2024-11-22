import "package:flutter/material.dart";

import "package:niceapp/pages/login.dart";
import "package:niceapp/pages/register.dart";
import "package:niceapp/pages/dashboard.dart";

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Welcome to main",
        theme: ThemeData(
            primaryColor: Colors.teal,
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.teal)
                .copyWith(secondary: Colors.teal),
            textTheme: TextTheme(
                headlineMedium: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal),
                bodyMedium: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal)),
            buttonTheme: ButtonThemeData(
                buttonColor: Colors.teal, textTheme: ButtonTextTheme.primary),
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.teal))),
        darkTheme: ThemeData.dark().copyWith(
            primaryColor: Colors.teal,
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.teal)
                .copyWith(secondary: Colors.teal),
            textTheme: TextTheme(
                headlineMedium: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal),
                bodyMedium: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal)),
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.teal))),
        themeMode: ThemeMode.system,
        routes: {
          "/": (context) => LoginPage(),
          "/register": (context) => RegisterPage(),
          "/dashboard": (context) => DashBoardPage()
        });
  }
}
