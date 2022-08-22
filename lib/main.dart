import 'package:flutter/material.dart';
import 'package:untitled1/All_win_page.dart';
import 'package:untitled1/Homepage.dart';
import 'package:untitled1/Lose_page.dart';
import 'package:untitled1/Win_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const HomePage(),
        "win_page": (context) => const win_page(),
        "lose_page": (context) => const lose_page(),
        "all_win_page": (context) => const all_win_page(),
      },
    ),
  );
}
