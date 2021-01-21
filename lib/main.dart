import 'package:flutter/material.dart';
import './view/home.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    title: 'Drawer Teste',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity),
  ));
}
