import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(MaterialApp(
    title: 'INVENTORY APP',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const LoginPage(),

  ));
}

