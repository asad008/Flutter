// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:catalog_app/pages/HomePage.dart';
import 'package:catalog_app/pages/LoginPage.dart';
import 'package:catalog_app/utils/routes.dart';
import 'package:catalog_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.home_Route,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.home_Route: (context) => HomePage(),
        MyRoutes.login_Route: (context) => LoginPage(),
      },
    );
  }
}
