import 'package:flutter/material.dart';
import 'package:projeto_magazine/screens/home/home.dart';
import 'package:projeto_magazine/screens/style.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        iconTheme: IconThemeData(
      color: pinkTheme,
      size: 20,
    )),
  ));
}
