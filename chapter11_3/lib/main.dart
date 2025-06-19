import 'package:chapter11_3/layout.dart';
import 'package:chapter11_3/login.dart';
import 'package:chapter11_3/lottery_app/layout_lotto.dart';
import 'package:chapter11_3/lottery_app/lotto.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.blue),
      home : const LayoutLotto(),
    );
  }
}
