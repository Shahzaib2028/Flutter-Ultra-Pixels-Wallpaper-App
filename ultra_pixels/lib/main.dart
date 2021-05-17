import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ultra Pixel",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.black,
        brightness: Brightness.light,
        accentColor: Colors.black,
        accentIconTheme: IconThemeData(color: Colors.white),
        dividerColor: Colors.white54,
        scaffoldBackgroundColor: Colors.white,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.black,
        brightness: Brightness.dark,
        accentColor: Colors.white,
        accentIconTheme: IconThemeData(color: Colors.black),
        dividerColor: Colors.black12,
        scaffoldBackgroundColor: Color(0xFF131313),
      ),
      themeMode: ThemeMode.system,
      home: MyHomePage()));
}
